use strict;

while(my $word  = <STDIN>) {
    chomp($word);

    if ($word =~ m/^.*[^AEIOUaeiou]{6,}.*$/) {
        print "$word\n";
    }
}