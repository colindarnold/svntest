#!/usr/bin/perl

use warnings;
use strict;

my @alphabet = ("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z");
my @fileContents;
my $output;

print "Key please: ";
my $key = <STDIN>;


my @files = glob('*');

foreach my $fileName (@files) {
    open(FIH, '<', $fileName);
    my @fileContents = <FIH>;
    open(FOH, '>', $fileName."e");
    


    foreach my $fileLine (@fileContents) {

	my @characters = split("", $fileLine);

       foreach my $character (@characters) {

	   my $symbol = 1;

	   for(my $i = 0; $i < 26; $i++) {

	       if($character eq $alphabet[$i]) {
		   $symbol = 0;
		   $output = $i + $key;
		   if($output > 25) {
		       $output = $output % 26;
		   } #end if($output...
		   print FOH $alphabet[$output];
#		   print $alphabet[$output];
	       }#end if($character..
	   }#end for(my $i..
	   if($symbol == 1) {
	       print FOH $character;
#	       print $character;
	   }#end if($symbol...
       }#end foreach my $character
	print FOH "\n";
#	print "\n";
       }
    close(FIH);
    close(FOH);
}#end foreach




