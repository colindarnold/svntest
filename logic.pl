#!/usr/bin/perl

use strict;
use warnings;

my @myArray = (42, 24, 789, 1492);

print "What kind of loop would you like to run: \n";
print " (1) Foreach Loop\n";
print " (2) For Loop\n";
print " (3) While Loop\n";
print " (4) Until Loop\n";
print " : ";
my $input = <STDIN>;

print "You entered $input which caused a new line";

chomp($input);

print "but now $input does not\n";

if($input == 1) {
     foreach my $i (@myArray) {
          print "The next item is a $i\n";
     }
}
elsif($input == 2) {
     for (my $i = 0; $i < @myArray; $i++) {
          print "Regular for loop says $myArray[$i]\n";
     }
}
elsif($input == 3) {
     my $i = 0;

     while($i < @myArray){
          print "While loop says $myArray[$i]\n";
          $i++;
     }
}
else {
     my $i = 0;

     until($i == (@myArray - 1)) {
          print "Until loop says $myArray[$i]\n";
          $i++;
     }
}
