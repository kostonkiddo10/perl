use strict;

while(my $line = <STDIN>) {
    chomp($line);
    $line =~ s/ *, */, /g;
    print "$line\n";
}