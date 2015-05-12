#!/usr/bin/perl

use strict;
use warnings;

my @list = glob('*');

foreach my $i (@list) {
    print "File is ", $i, "\n";
    }

foreach my $i (@list) {
    open(FH, '<', $i);
    my @fileContents = <FH>;
    foreach my $j (@fileContents) {
	print $j;
	}
    close(FH); 
}
