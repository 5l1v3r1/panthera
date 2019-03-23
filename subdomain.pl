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
print "[ + ] Environment: 	LWP Module, Perl under Kali Linux\n";
print "[ + ] Github: 		Https://www.github.com/haroonawanethicalhacker\n";
print "[ + ] Design Scheme: 	Sub-Hosts file get collect with finest OSINT sources including DNS wildcard enteries\n";
print "[ + ] Usage: 		$0 url.com\n\n";
print color('reset');
print color('bold green');
$site="$ARGV[0]";
print "\n[ + ] Contacting target...\n";
sleep (2);
print "\n[ + ] Please wait, processsing data...\n";
print "\n[ + ] Writting output to subdomains in the same folder...";
print "\n[ + ] It will take a minute or more, depending on the data...\n\n";
if (length $site) {
open("subdomainslist","<Sub-Hosts.txt") or die "Locate Sub-Hosts.txt";
while(<subdomainslist>)     {
chomp($_);
$sub = $_;
$url=$address='http://'.$sub.'.'.$site;
$req = $ua->get("$url");
if ($req->is_success)   {
print "\n$url";
open("save",">>subdomains.txt") or die "Allow write able permission";
print save "$url\n";
close("sav");
                  }
                            }
close("subdomainslist");
                        }
print color('reset');
exit;
