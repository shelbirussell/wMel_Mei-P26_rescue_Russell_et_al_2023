use strict ;
use warnings ;

my$kallistos = $ARGV[0] ;

## make list of files currently in $kallistos

opendir(DIRS, $kallistos) ;
my@dirs = readdir(DIRS) ;

foreach my$dir (@dirs) {
        print "directory ", $dir, "\n" ;

        ## this is linked to the directory names made in make-submit_STAR_align.pl
        if ($dir =~ m/_kallisto_quant$/) {

                opendir(ALIGN, "${kallistos}/${dir}") ;
                my@files = readdir(ALIGN) ;

                foreach my$file (@files) {
                        print "file ", $file, "\n" ;

                        ## check if sam, find sample name, and submit for processing
                        if ($file =~ m/^abundance.tsv$/) {
                                open IN, "<${kallistos}/${dir}/abundance.tsv" or die "cannot open ${kallistos}/${dir}/abundance.tsv\n" ;
                                my$symout = "wMel_abundance.tsv" ;
                                my$hostout = "Dmel_abundance.tsv" ;

                                open SOUT, ">${kallistos}/${dir}/wMel_abundance.tsv" or die "cannot open ${kallistos}/${dir}/wMel_abundance.tsv\n" ;
                                open HOUT, ">${kallistos}/${dir}/Dmel_abundance.tsv" or die "cannot open ${kallistos}/${dir}/Dmel_abundance.tsv\n" ;

                                while (<IN>) {
                                        chomp ;
                                        #print header to file
                                        if ($_ =~ m/^target_id/) {
                                                print SOUT $_, "\n" ;
                                                print HOUT $_, "\n" ;
                                        }

                                        else {
                                                if ($_ =~ m/^WD_/) {
                                                        print SOUT $_, "\n" ;
                                                }
                                                elsif ($_ =~ m/^FBtr/) {
                                                        print HOUT $_, "\n" ;
                                                }
                                                else {
                                                        print "line does not match WD_ or FBtr: ", $_, "\n" ;
                                                }
                                        }
                                }

                                close IN ;
                                close SOUT ;
                                close HOUT ;
                        }
                }
        }
}       
