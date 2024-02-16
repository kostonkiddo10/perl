# perlex6.pl - Storing an entire file into the value of a scalar variable
# ------------ and storing values into an array.
# Davian Albarran, CS-371, SP24

open FILE, "<roster.txt";
$roster = do {
    local $/;
    <FILE>
};

# Parse all student ids in $roster into @ids.
@ids = ($roster =~ m/s\d{7}/g);

print "$_\n" foreach(@ids);
