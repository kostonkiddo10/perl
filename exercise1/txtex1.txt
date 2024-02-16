# Exercise 1 - Davian Albaran, s1302682, CS-371, Spring 2024
# Count word length occurence in a word list.

# Task 1 - Read each line from input through STDIN.
while( $word = <STDIN> ) {
    # Task 2 - Get length of each word.
    chomp($word); # Trims trailing \n in each word
    $length = length($word);

    # Task 3 - Increment correct word length array element using $length.
    $wordlength[$length]++; # @wordlength array is created on the fly.
}

# Task 4 - After loop, print @wordlength array.
# Note how PERL does not throw an error when there is no value at a certain index.
print "Word length \t|\t Occurences\n---------------------------------------------\n"; # Printing column headers.
for (my $i = 1; $i < $#wordlength; $i++) {
    print "$i \t\t|\t\t $wordlength[$i] \n";
}
