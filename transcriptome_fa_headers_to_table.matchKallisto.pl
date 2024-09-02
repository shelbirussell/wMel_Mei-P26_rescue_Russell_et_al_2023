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

close KALLISTO ;

print "kallisto transcript ids: ", scalar(keys %kallisto_ids), "\n" ;

foreach my$id (nsort keys %kallisto_ids) {
        foreach my$seq (keys %transcriptome) {
                if ($seq =~ m/$id/) {
                        my@header = split(" ", $seq) ;
                        #print "header has ", scalar@header, " elements\n" ;
                        #print join(",", @header), "\n\n" ;
                        my$locus_tag ;
                        my$db_xref ;

                        foreach my$i (@header) {
                                ## if header contains kallisto entry
                                if ($i =~ m/^\[locus_tag=/) {
                                        $locus_tag = $i ;
                                        $locus_tag =~ s/^\[locus_tag=// ;
                                        $locus_tag =~ s/\]$// ;
                                }
                                elsif ($i =~ m/^\[db_xref=/) {
                                        $db_xref = $i ;

                                        if ($i =~ m/^\[db_xref=FLYBASE/) {
                                                $db_xref =~ s/^\[db_xref=FLYBASE:// ;
                                                $db_xref =~ s/,GeneID:\d+]$// ;
                                        }
                                        else {
                                                $db_xref =~ s/^\[db_xref=// ;
                                                $db_xref =~ s/\]$// ;
                                        }
                                }

                        }
                        if ($locus_tag) {
                                print OUT $id, "\t", $locus_tag, "\n" ;
                        }
                        else {
                                print OUT $id, "\t", $id, "\n" ;
                        }

                        #print $id, "\t",  $db_xref, "\t", $locus_tag, "\n" ;
                }
                else {
                        #print $id, " does not match ", $seq, "\n" ;
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
