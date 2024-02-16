# perlex2.pl - Read and output short words from a wordlist

while(<STDIN>) {
    chomp($_);

    # Old method
    # if (length($_) <= 7) {
    #     print $_, "\n";
    # }

    # Regex Method
    # ^ denotes beginning, . denotes any character excluding newline,
    # {1,7} denotes from 1 to 7, and $ denotes end of word.
    # Thus this says a word with any string of 1-7 characters between
    # the beginning and the end of the word.
    
    if ($_ =~ m/^.{1,7}$/) {
        print $_, "\n";
    }
}