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
use LWP::UserAgent;
no warnings 'uninitialized';
use Term::ANSIColor;
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
system "clear";
print color('bold red');
print "\n\n					   	 	Project: Panthera\n";
print "\n						        Coder: Haroon Awan\n\n\n";
print color('bold yellow');
print "[ + ] Version: 		Open Source Edition 1.0a\n";
print "[ + ] Contact: 		mrharoonawan\@gmail\.com \n";
print "[ + ] Environment: 	Perl under Kali Linux\n";
print "[ + ] Github: 		Https://www.github.com/haroonawanethicalhacker\n";
print "[ + ] Design Scheme: 	DNS brute forcer file gets update from top OSINT sources\n";
print "[ + ] Usage: 		$0 url.com\n\n";
print color('reset');
print color('bold green');
$site="$ARGV[0]";

print "[ + ] Enter url.com ... : "; 
chomp(my $url = <STDIN>);
print "\n[ + ] Basic Dns Brute Force(1) or Advanced Dns Brute Force(2): ";
my $choice = <STDIN>;
if ($choice == 1) {
print "\n[ + ] Contacting target";
print "\n[ + ] Please wait, starting DNS brute force using Nmap";
print "\n[ + ] Collecting output, it will take a minute or more, depending on the data\n";
$sysa = system("nmap -v --script dns-brute '$url'") ;
} else {
print "\n[ + ] Contacting target";
print "\n[ + ] Please wait, starting DNS brute force using Nmap";
print "\n[ + ] Collecting output, it will take a minute or more, depending on the data\n";
print "\n[ + ] Enter path of world list: \n";
my $filename = <STDIN>;
$sysb = system("nmap -v --script dns-brute --script-args dns-brute.domain='$url' ,dns-brute.threads=6,dns-brute.hostlist='$filename',newtargets -sS -p 80") ;
}
print "\n";
exit;
