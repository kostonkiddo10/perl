# Exercise 3 - Davian Albaran, s1302682, CS-371, Spring 2024
# Read a roster and print

while($studentline = <STDIN>) {
    # 1 - split the $student into 3 fields
    ($last, $first, $email) = split /\s*,\s*/, $studentline;

    # 2 - create a string made up of the fields.
    $student = "$first $last $email";

    # 3 - push the string to a roster array
    push @roster, $student;
}

# 4 - sort roster by first letter of first name
@sorted_roster = sort @roster;

print "@sorted_roster\n";