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
$output .= "_transcritpome_lengths.txt" ;
print "output file renamed to: ${output}\n" ;

my$length_wMel = 0 ;
my$length_Dmel = 0 ;

foreach my$seq (keys %transcriptome) {
        if ($seq =~ m/WD_/) {
                $length_wMel += length($transcriptome{$seq}{"SEQ"}) ;
        }
        elsif ($seq =~ m/FBtr/) {
                $length_Dmel += length($transcriptome{$seq}{"SEQ"}) ;
        }
        else {
                print "sequence not in new file: ", $seq, "\n" ;
        }
}

open OUT, ">$output" or die "cannot open $output\n" ;
print OUT "Length of wMel transcriptome: ", $length_wMel, "\n" ;
print OUT "Length of Dmel transcriptome: ", $length_Dmel, "\n" ;
close OUT ;

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
