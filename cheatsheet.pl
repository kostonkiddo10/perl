# Defining an array using quote words (qw).
# my @days = qw(Mon Tue Wed Thu Fri Sat Sun);

# Array Slice
# my @long_weekend = @days[ 4..6 ];

# Traditional for iteration
# for ( my $i = 0; $i <= $#days; $i++ ) {
#     print "$days[ $i ] \n";
# }

# foreach iteration
# foreach my $day (@days) {
#     print "$day \n";
# }

# foreach my $day (@long_weekend) {
#     print "$day \n";
# }


# Sorting
# my @unsorted = qw( Zeni Top Bottom Alpha Garbage Chess );
# my @sorted = sort @unsorted;

# print "@sorted \n";

# Stacks
# my $hand;
# my @pile = ( "Ace", "Two", "Three", "Jack", "Queen", "King");

# print "Initial deck: @pile \n";

# $hand = pop @pile;

# print "Deck after pop: @pile \n";
# print "In hand: $hand \n";

# push @pile, "Joker";

# print "New deck: @pile \n";

# 