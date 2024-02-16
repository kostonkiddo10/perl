# Using Mechanizer to interact with web pages.

use strict;
use WWW::Mechanize;

my $url = "https://www2.monmouth.edu/muwebadv/wa3/search/SearchClassesv2.aspx";
my $mech = WWW:Mechanize->new();

# Attaches Mech to the url.
$mech->get($url);

# Select what term we want.
my $term = "24/SP - 2024 Spring";
$mech->field("_ctl0:MainContent:ddlTerm", $term); # Populate the field named _ctl0:MainContent:ddlTerm with $term.

# Select the subject
my $subject = "COMPUTER SCIENCE (CS)"
$mech->field("_ctl0:MainContent:ddlSubj_1", $subject); # Choose CS

# Click the Submit button
$mech->click_button("_ctl0:MainContent:btnSubmit");

# Get resulting HTML
my $page = $mech->content();

# Can print or output to file.
print $page;
