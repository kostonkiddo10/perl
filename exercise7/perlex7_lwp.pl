# perlex7_lwp.pl - Extracting data from html file using LWP.
# Davian Albarran, CS-371, SP24

use strict;
use LWP::Simple;

my $url = "https://www.monmouth.edu/department-of-csse/news-events/";
my $news = get $url;

die "Unable to get content from $url" unless defined $news;

my @headlines = ($news =~ m|<strong>(.+)</strong>|g);

print "$_\n" foreach (@headlines);

my @anames = $news =~ m|<a class="anchorMargin" name="(.+)">|g;

print "$_\n" foreach(@anames);

print $#headlines + 1, " \n";
print $#anames + 1, " \n"
