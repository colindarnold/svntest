#!/usr/bin/perl

use strict;
use warnings;

sub foreachLoop {
     my @myArray = @_;

     foreach my $i (@myArray) {
          print "Foreach says  $i\n";
     }
}

sub forLoop {
     my @myArray = @_;

     for (my $i = 0; $i < @myArray; $i++) {
          print "Regular for loop says $myArray[$i]\n";
     }
}

sub whileLoop {
     my @myArray = @_;
     my $i = 0;

     while($i < @myArray){
          print "While loop says $myArray[$i]\n";
          $i++;
     }
}

sub untilLoop {
     my @myArray = @_;
     my $i = 0;

     until($i == (@myArray - 1)) {
          print "Until loop says $myArray[$i]\n";
          $i++;
     }
}


my @myArray = (42, 24, 789, 1492);

print "What kind of loop would you like to run: \n";
print " (1) Foreach Loop\n";
print " (2) For Loop\n";
print " (3) While Loop\n";
print " (4) Until Loop\n";
print " : ";
my $input = <STDIN>;

print "You entered $input which caused a new line\n";

chomp($input);

print "but now $input does not\n";

if($input == 1) {
     foreachLoop(@myArray);
}
elsif($input == 2) {
     forLoop(@myArray);
}
elsif($input == 3) {
     whileLoop(@myArray);
}
else {
     untilLoop(@myArray);
}
