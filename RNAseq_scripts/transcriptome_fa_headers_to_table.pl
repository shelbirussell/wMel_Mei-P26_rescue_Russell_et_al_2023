use strict ;
use warnings ;
use Sort::Naturally ;

## purpose: make tables for creating Txdb objects in tximport for DESeq2:
## We first make a data.frame called tx2gene with two columns: 1) transcript ID and 2) gene ID.
## The column names do not matter but this column order must be used. The transcript ID must be the same one used in the abundance files.
## Note: I used the Dmel db_xref ids (Flybase transcript ids) in the kallisto reference, so thaht is what will be output as "transcript_id" here

## to ensure that the reference matches the kallisto files, first read in a list of genes from a kallisto file and match them with their locus_tags
## ==> not all transcripts were aligned to by kallisto:
### FBtr0472931,miRBase:MIMAT0041637 is not in the kallisto file
##FBtr0472932,miRBase:MIMAT0041638 is not in the kallisto file
##FBtr0346872 is not in the kallisto file
##36657 sequence records printed to new file

my$fasta = $ARGV[0] ;
my$kallisto = $ARGV[1] ;

my$transcriptome = read_fasta($fasta) ;
my%transcriptome =%{$transcriptome} ;

print "sequences retrieved: ", scalar(keys %transcriptome), "\n" ;

my$output = $fasta ;
$output =~ s/.f\w+$// ;
## prevent failure of the above substitution
if ($output eq $fasta) {die "Dieing! $output and $fasta are identical, so $fasta would be overwritten!\n" ;}
$output .= "_gene_ids.tsv" ;
print "output file renamed to: ${output}\n" ;
open OUT, ">$output" or die "cannot open $output\n" ;
print OUT "transcript_id\tgene_id\n" ;

my$count = 0 ;

my%kallisto_ids ;
open KALLISTO, "<${kallisto}" or die "cannot open $kallisto\n" ;

while (<KALLISTO>) {
        chomp ;
        if ($_ =~ m/^target_id/) {next ;}
        my@split = split(/\t/, $_) ;
        my$id = $split[0] ;
        $id =~ s/\s+$// ;
        $id =~ s/^\s+// ;
        $kallisto_ids{$id} = "" ;
}

print "kallisto transcript ids: ", scalar(keys %kallisto_ids), "\n" ;

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
                                        #### these need to be kept #### $db_xref =~ s/,miRBase:\w+\d+$// ;

                                }
                                elsif ($y =~ m/^\[locus_tag=/) {
                                        $locus_tag = $y ;
                                        $locus_tag =~ s/^\[locus_tag=// ;
                                        $locus_tag =~ s/^Dmel_// ;
                                        $locus_tag =~ s/\]$// ;
                                }
                                ## some nc_rnas don't have transcript ids
                                elsif ($y =~ m/^\[product=/) {
                                        if ($y =~ m/^\[transcript_id=/) { next ;}
                                        else {
                                                $transcript_id = $y ;
                                                $transcript_id =~ s/^\[product=// ;
                                                $transcript_id =~ s/\]$// ;
                                        }
                                }
                        }
                        print OUT "${db_xref}\t${locus_tag}\n" ;
                        $count ++ ;
                        $transcriptome{$seq}{"NEW_HEAD"} = $locus_tag ;
                }

                elsif ($seq =~ m/\[locus_tag=WD_/) {
                        my$locus_tag ;
                        my$db_xref ;
                        my$transcript_id ;
                        foreach my$y (@header) {
                                if ($y =~ m/^\[locus_tag=/) {
                                        $locus_tag = $y ;
                                        $locus_tag =~ s/^\[locus_tag=// ;
                                        $locus_tag =~ s/\]$// ;

                                        # these are the same for wMel
                                        $transcript_id = $y ;
                                        $transcript_id =~ s/^\[locus_tag=// ;
                                        $transcript_id =~ s/\]$// ;
                                }
                                elsif ($y =~ m/^\[db_xref=/) {
                                        $db_xref = $y ;
                                        $db_xref =~ s/^\[db_xref=// ;
                                        $db_xref =~ s/\]$// ;
                                }
                                ## some nc_rnas don't have transcript ids
                                elsif ($y =~ m/^\[product=/) {
                                        if ($y =~ m/^\[db_xref=/) { next ;}
                                        else {
                                                $db_xref = $y ;
                                                $db_xref =~ s/^\[product=// ;
                                                $db_xref =~ s/\]$// ;
                                        }
                                }
                        }
                        print OUT "${transcript_id}\t${locus_tag}\n" ;
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
                        print OUT "${db_xref}\t${transcript_id}\n" ;
                        $count ++ ;
                        $transcriptome{$seq}{"NEW_HEAD"} = $transcript_id ;
                }
        }
}

foreach my$transcript (nsort keys %kallisto_ids) {
        print OUT $transcript, "\t", $kallisto_ids{$transcript}, "\n" ;
}

close OUT ;

print $count, " sequence records printed to new file\n" ;


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
