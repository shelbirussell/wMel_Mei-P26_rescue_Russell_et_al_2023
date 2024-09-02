use strict ;
use warnings ;
use Sort::Naturally ;

my$fasta = $ARGV[0] ;

my$transcriptome = read_fasta($fasta) ;
my%transcriptome =%{$transcriptome} ;

print "sequences retrieved: ", scalar(keys %transcriptome), "\n" ;

my$output = $fasta ;
$output =~ s/.f\w+$// ;
## prevent failure of the above substitution
if ($output eq $fasta) {die "Dieing! $output and $fasta are identical, so $fasta would be overwritten!\n" ;}
$output .= "_renamed.fasta" ;
print "output file renamed to: ${output}\n" ;
open OUT, ">$output" or die "cannot open $output\n" ;
my$count = 0 ;

foreach my$seq (nsort keys %transcriptome) {
        my@header = split(" ", $seq) ;
        #print "header has ", scalar@header, " elements\n" ;
        #print join(",", @header), "\n\n" ;

        ## if header contains a locus_tag
        if ($seq =~ m/\[locus_tag=/) {
                ## handle genomes separately
                if ($seq =~ m/\[locus_tag=Dmel_/) {
                        my$locus_tag ;
                        my$transcript_id ;
                        my$db_xref ;
                        foreach my$y (@header) {
                                if ($y =~ m/^\[transcript_id=/) {
                                        $transcript_id = $y ;
                                        $transcript_id =~ s/^\[transcript_id=// ;
                                        $transcript_id =~ s/\]$// ;
                                }
                                elsif ($y =~ m/^\[db_xref=FLYBASE/) {
                                        $db_xref = $y ;
                                        $db_xref =~ s/^\[db_xref=FLYBASE:// ;
                                        $db_xref =~ s/,GeneID:\d+]$// ;
                                }
                                elsif ($y =~ m/^\[locus_tag=/) {
                                        $locus_tag = $y ;
                                        $locus_tag =~ s/^\[locus_tag=// ;
                                        $locus_tag =~ s/\]$// ;
                                }
                        }
                        print OUT ">", $db_xref, "\n" ;
                        print OUT "$_\n" foreach ($transcriptome{$seq}{"SEQ"} =~ /.{1,80}/g) ;
                        $count ++ ;
                        $transcriptome{$seq}{"NEW_HEAD"} = $locus_tag ;
                }

                elsif ($seq =~ m/\[locus_tag=WD_/) {
                        my$locus_tag ;
                        foreach my$y (@header) {
                                if ($y =~ m/^\[locus_tag=/) {
                                        $locus_tag = $y ;
                                        $locus_tag =~ s/^\[locus_tag=// ;
                                        $locus_tag =~ s/\]$// ;
                                }
                        }
                        print OUT ">", $locus_tag, "\n" ;
                        print OUT "$_\n" foreach ($transcriptome{$seq}{"SEQ"} =~ /.{1,80}/g) ;
                        $count ++ ;
                        $transcriptome{$seq}{"NEW_HEAD"} = $locus_tag ;
                }

                else {print "locus tag doesn't match Dmel or WD: ", $seq, "\n" ;}

        }

        else {
                ## missing records are Dmel transcripts without locus_tag entries
                if ($seq =~ m/\[db_xref=FLYBASE/) {
                        my$transcript_id ;
                        my$db_xref ;
                        foreach my$y (@header) {
                                if ($y =~ m/^\[transcript_id=/) {
                                        $transcript_id = $y ;
                                        $transcript_id =~ s/^\[transcript_id=// ;
                                        $transcript_id =~ s/\]$// ;
                                }
                                elsif ($y =~ m/^\[db_xref=FLYBASE/) {
                                        $db_xref = $y ;
                                        $db_xref =~ s/^\[db_xref=FLYBASE:// ;
                                        $db_xref =~ s/,GeneID:\d+]$// ;
                                }
                        }
                        print OUT ">", $db_xref, "\n" ;
                        print OUT "$_\n" foreach ($transcriptome{$seq}{"SEQ"} =~ /.{1,80}/g) ;
                        $count ++ ;
                        $transcriptome{$seq}{"NEW_HEAD"} = $transcript_id ;
                }
        }
}

close OUT ;

print $count, " sequence records printed to new file\n" ;

foreach my$seq (nsort keys %transcriptome) {
        if (exists $transcriptome{$seq}{"NEW_HEAD"}) {
                next ;
        }
        else {
                print "sequence not in new file: ", $seq, "\n" ;
        }
}


sub read_fasta {
        open FASTA, "<$_[0]" or die "cannot open $_[0]";

        my%seqs ;
        my$header ;
        my$seq ;
        my@split ;

        while (<FASTA>) {

                if ( $_ =~ m/^#/ ) {next ;}

                if ( $_ =~ m/>/ ) {
                        if ($seq) {$seqs{$split[0]}{"SEQ"} = $seq ;}

                        $header = $_ ;
                        $header =~ s/^>// ;
                        $header =~ s/\s+$// ;
        	        @split = split(/\t/, $header) ;

                        $seq = "" ;
                }

                else {
                        $_ =~ s/\s+//g ;
                        $seq .= $_ ;
                }
        }

        close FASTA ;

        if ($seq) {$seqs{$split[0]}{"SEQ"} = $seq ;}

        return \%seqs ;
}
