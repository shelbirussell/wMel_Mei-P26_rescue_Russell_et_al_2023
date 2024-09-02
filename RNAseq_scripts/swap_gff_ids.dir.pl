use strict ;
use warnings ;
use Sort::Naturally ;
use File::Basename ;

## Purpose: extract coverage data for a region of the genome (defined by a gtf file) from the output of bedtools coverage by site file (scaffold\tsite\tcoverage)
## perl extract_coverage_for_region.pl region genome(s).gtf /dir/dir/*sample_coverage_by_site.txt

## perl extract_coverage_for_region.pl FBgn0026206 /n/holyscratch01/cavanaugh_lab/shelbirussell/Wolbachia_transcriptomics/reference/gtfs/Dmel6wMel2978.6.1.gtf /n/holyscratch01/cavanaugh_lab/shelbirussell/Wolbachia_transcriptomics/DmelwMel_cell_RNAseq/

my$genes = $ARGV[0] ;
my$gtf = $ARGV[1] ;

print "extracting alternate names for $genes from $gtf\n" ;

my%data ;

print "opening ${gtf}\n" ;

## read in GTF and save region to hash
open GTF, "<${gtf}" or die "cannot open ${gtf}\n" ;

while (<GTF>) {
        chomp ;
        ## skip header
        if ($_ =~ m/^#/) {next;}

        ## only look at genes for now - there's a lot of duplication across genes, cds, transcripts, exons, etc. that I don't want to handle right now
        my@record = split(/\t/, $_) ;
        #print join (",", @record), "\n" ;
        if ($record[2] =~ m/gene/) {
                my@info = split(/;/, $record[8]) ;
                my$gene_id = $info[0] ;
                $gene_id =~ s/^gene_id // ;
                $gene_id =~ s/"//g ;
                $data{$gene_id} = $gene_id ;

                print "gene ", $gene_id, " contains information fields: ", scalar(@info), "\n" ;

                ## find the old locus tag
                foreach my$i (@info) {
                        if ($i =~ m/old_locus_tag/) {
                                my$old_id = $i ;
                                #print $old_id, "\t" ;
                                $old_id =~ s/old_locus_tag// ;
                                $old_id =~ s/"//g ;
                                ## old_locus_tag "WD1221,WD_1221"
                                my@versions = split(',', $old_id) ;
                                print join("~", @versions), "\n" ;
                                $data{$gene_id} = $versions[1] ;
                        }
                        else {
                                print $i, "\n" ;
                        }
                }
        }
}

close GTF ;

## import single-column
open IN, "<${genes}" or die "cannot open ${genes}\n" ;
my%select ;
while (<IN>) {
        chomp ;
        $select{$_} = "" ;
}
close IN ;

## output format:
## scaff\tsite\tcov_aligner_sample1\tcov_aligner_sample2\tcov_aligner_sample3...
my$ref = basename($genes) ;
$ref =~ s/.gtf// ;

open OUT, ">${ref}_old_locus_tags.tsv" or die "cannot open ${ref}_old_locus_tags.tsv\n" ;

## add old_ids
foreach my$gene (keys %select) {
        #$select{$gene} = $data{$gene} ;
        #print $gene, "\n" ;
        if (exists $data{$gene}) {
                print OUT $data{$gene}, "\n" ;
        }
        else {
                print OUT "${gene}\n" ;
        }
}

close OUT ;
