#!/usr/bin/perl
#
# $Id$

require 5.008;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck;

######################################################################

my $check = new DNSCheck({ interactive => 1 });

die "syntax error" unless ($ARGV[0]);

$check->soa->test($ARGV[0]);
