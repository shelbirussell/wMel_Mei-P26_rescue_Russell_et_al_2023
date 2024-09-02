use strict ;
use warnings ;
use Sort::Naturally ;
use File::Basename ;

## Purpose: extract coverage data for a region of the genome (defined by a gtf file) from the output of bedtools coverage by site file (scaffold\tsite\tcoverage)
## perl extract_coverage_for_region.pl region genome(s).gtf /dir/dir/*sample_coverage_by_site.txt

## perl extract_coverage_for_region.pl FBgn0026206 /n/holyscratch01/cavanaugh_lab/shelbirussell/Wolbachia_transcriptomics/reference/gtfs/Dmel6wMel2978.6.1.gtf /n/holyscratch01/cavanaugh_lab/shelbirussell/Wolbachia_transcriptomics/DmelwMel_cell_RNAseq/

my$region = $ARGV[0] ;
my$gtf = $ARGV[1] ;
my$coverage_dir = $ARGV[2] ;

my%data ;
my%avg_cov ;

print "extracting $region from $gtf and files in $coverage_dir\n" ;
print "opening ${gtf}\n" ;

## read in GTF and save region to hash
open GTF, "<${gtf}" or die "cannot open ${gtf}\n" ;

while (<GTF>) {
        chomp ;
        ## skip header
        if ($_ =~ m/^#/) {next;}

        ## only look at lines that contain the search term
        if ($_ =~ m/$region/) {
                print "$_ \nmatched ${region}!\n" ;
                #NC_004354.4	RefSeq	CDS	126626	126630	.	-	0	gene_id "Dmel_CG17636"; transcript_id "NM_001103384.3"; db_xref "FLYBASE:FBpp0111834"; db_xref "GeneID:5740847"; gbkey "CDS"; gene "CG17636"; locus_tag "Dmel_CG17636"; orig_transcript_id "gnl|FlyBase|CG17636-RA"; product "uncharacterized protein, isoform A"; protein_id "NP_001096854.1"; exon_number "1";
                my@record = split(/\t/, $_) ;

                ## only look at genes for now - there's a lot of duplication across genes, cds, transcripts, exons, etc. that I don't want to handle right now
                if ($record[2] =~ m/gene/) {
                        my@info = split(/;/, $record[8]) ;
                        my$gene_id = $info[0] ;
                        $gene_id =~ s/^gene_id // ;
                        $gene_id =~ s/"//g ;

                        print "gene ", $gene_id, " contains information fields: ", scalar(@info), "\n" ;
                        ## the match will be in the last column
                        foreach my$i (@info) {
                                #print $i, "\n" ;
                                if ($i =~ m/$region/) {
                                        print "INFO region matches ${region} with coordinates ", $record[3], "-", $record[4], "\n" ;
                                        ## define size of region base on biggest spanning hit
                                        if (exists $data{$record[0]}{$gene_id}{"COORDS"}) {
                                                my@split = split("-", $data{$record[0]}{$gene_id}{"COORDS"}) ;
                                                my@coordinates = () ;
                                                #move start back if new start coordinate is less than old
                                                if ($record[3] < $split[0]) {(push @coordinates, $record[3]) ;}
                                                else {(push @coordinates, $split[0]) ;}
                                                #push end forward if new end coordinate is more than old
                                                if ($record[4] > $split[1]) {(push @coordinates, $record[4]) ;}
                                                else {(push @coordinates, $split[1]) ;}

                                                $data{$record[0]}{$gene_id}{"COORDS"} = $coordinates[0] . "-" . $coordinates[1] ;
                                        }
                                        else {
                                                $data{$record[0]}{$gene_id}{"COORDS"} = $record[3] . "-" . $record[4] ;
                                        }
                                }
                        }
                }
                else {
                        print $record[2], " is not \"gene\" \n" ;
                }
        }
}

close GTF ;

opendir(DIRS, $coverage_dir) ;
my@dirs = readdir(DIRS) ;

foreach my$dir (@dirs) {
        #print "directory ", $dir, "\n" ;

        ## this is linked to the directory names made in make-submit_STAR_align.pl
        if ($dir =~ m/-\d$/ | $dir =~ m/-\d-alignment$/) {
                print "directory ", $dir, "\n" ;

                opendir(ALIGN, "${coverage_dir}/${dir}") ;
                my@files = readdir(ALIGN) ;
                foreach my$file (@files) {
                        #print $file, "\n" ;

                        ## (base) head Q20map/JW18DOX221117-1_bwa-aligned_DmelwMel_genomes_coverage_by_site.txt
                        ## NC_004354.4	1	0
                        if ($file =~ m/-uniqueQ20_coverage_by_site.txt$/) {
                                my$sample = $file ;
                                $sample =~ s/_\w+-aligned_.+_coverage_by_site.txt$// ;
                                my$aligner = $file ;
                                $aligner =~ s/-aligned_.+_coverage_by_site.txt$// ;
                                $aligner =~ s/^.+-\d_//;

                                $avg_cov{"SUM_COV"} = 0 ;
                                $avg_cov{"SUM_SITES"} = 0 ;

                                print $sample, " ", $aligner, "\topening file: ", "${coverage_dir}/${file}", "\n" ;

                                open COV, "<${coverage_dir}/${dir}/${file}" or die "cannot open ${coverage_dir}/${dir}/${file}\n" ;
                                while (<COV>) {
                                        chomp ;
                                        if ($_ =~ m/^#/) {next;}
                                        my@line = split(/\t/, $_) ;
                                        #print $line[0], "\n" ;
                                        foreach my$scaff (keys %data) {
                                                ## collect coverage data for all sites to normalize by sequencing effort
                                                $avg_cov{$sample}{$aligner}{"SUM_COV"} += $line[2] ;
                                                $avg_cov{$sample}{$aligner}{"SUM_SITES"} ++ ;

                                                #print $scaff, "\t", $line[0], "\n" ;
                                                if ($line[0] =~ m/$scaff/) {
                                                        foreach my$gene (keys %{$data{$scaff}}) {
                                                                my@coords = split("-", $data{$scaff}{$gene}{"COORDS"}) ;
                                                                if ($line[1] >= $coords[0] && $line[1] <= $coords[1]) {
                                                                        $data{$scaff}{$gene}{"COV"}{$line[1]}{$sample}{$aligner}{"SITES"} = $line[2] ;
                                                                        print $line[1], " is in record - ", $scaff, " ", $gene, " range: ", $coords[0], "-", $coords[1], "\n" ;
                                                                }

                                                        }
                                                }
                                                else {
                                                        #print $line[0], " does not match ${scaff}\n" ;
                                                }
                                        }
                                }
                                close COV ;
                        }
                }
        }
        close ALIGN ;
}
close DIRS ;

## get lists for header
my@scaffs = () ;
my@genes = () ;
my@sites = () ;

print "\nprinting retained gtf record:\n" ;
foreach my$scaff (nsort keys %data) {
        push (@scaffs, $scaff) ;
        foreach my$gene (nsort keys %{$data{$scaff}}) {
                push (@genes, $gene) ;
                foreach my$site (nsort keys %{$data{$scaff}{$gene}{"COV"}}) {
                        push (@sites, $site) ;
                }
                print "record: ", $scaff, "\t", $gene, "\t", scalar(@sites), "\n" ;
        }
}

## output format:
## scaff\tsite\tcov_aligner_sample1\tcov_aligner_sample2\tcov_aligner_sample3...
my$ref = basename($gtf) ;
$ref =~ s/.gtf// ;

open OUT, ">${region}_${ref}_normalized_coverages.txt" or die "cannot open ${region}_${ref}_normalized_coverages.txt\n" ;

## print header
print OUT "scaff\tgene\tsite\t" ;
print scalar@scaffs, "\t", join(",", @scaffs), "\n" ;
print scalar@genes, "\t", join(",", @genes), "\n" ;
print scalar@sites, "\t", join(",", @sites), "\n" ;

foreach my$sample (nsort keys %{$data{$scaffs[0]}{$genes[0]}{"COV"}{$sites[0]}}) {
        foreach my$aligner (nsort keys %{$data{$scaffs[0]}{$genes[0]}{"COV"}{$sites[0]}{$sample}}) {
                print OUT $sample, "_", $aligner, "\t" ;
        }
}
print OUT "\n" ;

foreach my$scaff (nsort keys %data) {
        foreach my$gene (nsort keys %{$data{$scaff}}) {
                foreach my$site (nsort keys %{$data{$scaff}{$gene}{"COV"}}) {
                        print OUT $scaff, "\t", $gene, "\t", $site, "\t" ;
                        foreach my$sample (nsort keys %{$data{$scaff}{$gene}{"COV"}{$site}}) {
                                foreach my$aligner (nsort keys %{$data{$scaff}{$gene}{"COV"}{$site}{$sample}}) {
                                        my$avg = $avg_cov{$sample}{$aligner}{"SUM_COV"} / $avg_cov{$sample}{$aligner}{"SUM_SITES"} ;

                                        print OUT $data{$scaff}{$gene}{"COV"}{$site}{$sample}{$aligner}{"SITES"} / $avg , "\t" ;
                                }
                        }
                        print OUT "\n" ;
                }
        }
}


close OUT ;
