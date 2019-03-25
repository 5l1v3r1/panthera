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
my $url = <STDIN>;
chomp $url;
print "[ + ] Basic Dns Brute Force(1) or Advanced Dns Brute Force(2): ";
my $choice = <STDIN>;
print "\n[ + ] Enter path of world list: ";
my $filename = <STDIN>;
print "\n[ + ] Contacting target ...\n";
sleep (2);
print "\n[ + ] Please wait, starting DNS brute force using Nmap ...\n";
print "\n[ + ] Collecting output, it will take a minute or more, depending on the data ...\n\n";
if ($choice ==1) {
$sys = system("nmap --script dns-brute '$url' ") ;
} else {
$sys = system("nmap --script dns-brute --script-args dns-brute.domain='$url' ,dns-brute.threads=6,dns-brute.hostlist='$filename',newtargets -sS -p 80") ;
}
print "\n";
exit;
