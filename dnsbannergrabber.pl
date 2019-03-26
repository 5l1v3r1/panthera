#!/usr/bin/env perl
use Term::ANSIColor;

system "clear";

print color('bold red');
print "\n\n					   	 	Project: Panthera\n";
print "\n						        Coder: Haroon Awan\n\n\n";
print color('bold yellow');
print "[ + ] Version: 		Open Source Edition 1.0a\n";
print "[ + ] Contact: 		mrharoonawan\@gmail\.com \n";
print "[ + ] Environment: 	Perl in Kali Linux\n";
print "[ + ] Github: 		Https://www.github.com/haroonawanethicalhacker\n";
print "[ + ] Design Scheme: 	DNS Banner Grabber \n";
print "[ + ] Usage: 		$0 url.com\n\n";
print color('reset');
print color('bold green');

print "[ + ] Enter url.com ... : "; 
chomp(my $url = <STDIN>);
print "\n[ + ] Contacting target ...\n";
sleep (1);
print "\n[ + ] Please wait, returning DNS Banner ...\n";
print "\n[ + ] Collecting output, it will take a minute or more, depending on the data ...\n\n";
$sys = system("dig version.bind CHAOS TXT '$url'");
print "\n";
exit;
