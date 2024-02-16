# perlex4.pl - roster to hash
# Davian Albarran, CS-371, SP24

while($studentline = <STDIN>) {
    chomp($studentline);
    
    ($last, $first, $email) = split /\s*,\s*/, $studentline;

    # Insert student into %roster, with key=id, value=name

    # 1 - Get ID from email
    ($id, $domain) = split /@/, $email;
    
    # 2 - Put first and last name together for name
    $roster{$id} = "$last, $first";
}

# 3 - Print key/value pairs in %roster
foreach $id ( sort keys %roster ) {
    print "$id, $roster{$id}\n";
}