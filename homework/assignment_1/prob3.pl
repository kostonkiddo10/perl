use strict;

my @multiupcase;

while(my $word = <STDIN>) {
    chomp($word);
    
    if ($word =~ m/[A-Z]+/) {
        push @multiupcase, $word;
    }
}

foreach my $upcaseword (@multiupcase) {
    print "$upcaseword";
}