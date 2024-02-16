# perlex5.pl - roster program w/ command line args
# Davian Albarran, CS-371, SP24

sub help {
    print "
Usage: perl -w perlex5.pl <option> roster1 roster2 ... rostern
Options:
    -help | --help | -h -> Print this message
    -first | --first -> Display class roster ordered by first name
    -last | --last -> Display class roster ordered by last name
    -id | --id -> Display the class roster sorted by student ID
    no args -> Print this message
    "
}

sub sortby {
    if ($_[0] =~  m/-f/) { $sortby = "first"; }
    elsif ($_[0] =~  m/-l/) { $sortby = "last"; }
    elsif ($_[0] =~  m/-id/) { $sortby = "id"; }
    else { help(); exit(1); }
}

if ($#ARGV == -1 || $ARGV[0] =~ m/-h/) {
    help();
    exit(1);
}

# Process command line args
$option = shift @ARGV;
sortby($option);

while ($studentline = <>) {
    chomp($studentline);
    ($last, $first, $email) = split /\s*,\s*/, $studentline;
    $id = substr($email, 0, 8);

    $roster{$id} = "$last, $first";
}

# Print key/value pairs of %roster using $sortby
if ($sortby =~ m/last/) {
    while (($id, $name) = each %roster) {
        push @last, "$name, $id";
    }

    foreach $student (sort @last) {
        print "$student\n"
    }
} elsif ($sortby =~ m/first/) {
    while (($id, $name) = each %roster) {
        # reverse $first and $last
        $name =~ s/(.+), (.+)/$2 $1/;
        push @first, "$name, $id";
    }

    foreach $student (sort @first) {
        print "$student\n";
    }
} else {
    foreach $id (sort keys %roster) {
        print "$id, $roster{$id}\n";
    }
}