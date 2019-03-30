#***************************************************************************************#
#----------------------- EULA LICENSE AGREEMENT NOTICE ---------------------------------#
#1. This software uses EULA based software agreement that grants users rights to use for#
#any purpose, modify and redistribute creative works about this software.               #
#2. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#what you do with by/this software. Your free to use this software as it is for any     #
#purpose that suites as long as it is not related to crime.                             #
#***************************************************************************************#

#!/usr/bin/env perl
use Term::ANSIColor;
system "clear";
print color('bold red');
print "\n\n					   	 	Project: Panthera\n";
print "\n						        Coder: Haroon Awan\n\n\n";
print color('bold yellow');
print "[ + ] Version: 		Open Source Edition 1.0a\n";
print "[ + ] Contact: 		mrharoonawan\@gmail\.com \n";
print "[ + ] Environment: 	DNS module, Perl under Kali Linux\n";
print "[ + ] Github: 		Https://www.github.com/haroonawanethicalhacker\n";
print "[ + ] Design Scheme: 	DNS zone transfers, AXFR\n";
print "[ + ] Usage: 		$0 url.com\n\n";
print color('reset');
print color('bold green');
$site="$ARGV[0]";

print "[ + ] Enter url.com ... : "; 
my $url = <STDIN>;
chomp $url;
my $sys = system("nslookup -query=ns '$url'");
print "[ + ] Enter name servers ... : "; 
my $ns = <STDIN>;
chomp $ns;
print "\n[ + ] Contacting target ...\n";
sleep (2);
print "\n[ + ] Please wait, starting ...\n";
print "\n[ + ] Collecting output, it will take a minute or more, depending on the data ...\n\n";
$done = system("host -t axfr '$url' '$ns'");
exit;
