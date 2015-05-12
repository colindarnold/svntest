#!/usr/bin/perl

use strict;
use warnings;

my @myArray = (42, 24, 789, 1492);

foreach my $i (@myArray) {
     print "The next item is a $i";
}

for (my $i = 0; $i < @myArray; $i++) {
     print "Regular for loop says $myArray[$i]\n";
}

my $i = 0;

while($i < @myArray){
     print "Regular for loop says $myArray[$i]\n";
     $i++;
}


$i = 0;

until($i == (@myArray - 1)) {
     print "Until loop says $myArray[$i]\n";
     $i++;
}
