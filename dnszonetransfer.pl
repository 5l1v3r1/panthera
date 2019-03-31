# *************************************************************************************** #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#                     Agreement between "Haroon Awan" and "You"(user).                    #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#  1. By using this piece of software your bound to these point.                          #
#  2. This an End User License Agreement (EULA) is a legal between a software application #
#     author "Haroon Awan" and (YOU) user of this software.                               #
#  3. This software application grants users rights to use for any purpose or modify and  #
#     redistribute creative works.                                                        #
#  4. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#     what you do with by/this software as your free to use this software.                #
#  5. Any other purpose(s) that it suites as long as it is not related to any kind of     #
#     crime or using it in un-authorized environment.                                     #
#  6. You can use this software to protect and secure your data information in any        #
#     environment.                                                                        #
#  7. It can also be used in state of being protection against the unauthorized use of    #
#     information.                                                                        #
#  8. It can be used to take measures achieve protection.                                 #
# *************************************************************************************** #

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
