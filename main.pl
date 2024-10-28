#!/usr/bin/env perl
use 5.020;
use utf8;
use warnings;
use autodie;
use feature qw/signatures postderef/;
no warnings qw/experimental::postderef/;

use Mojo::URL;
use Mojo::Util qw/b64_decode/;

for my $url (@ARGV) {
    my $result = Mojo::URL->new('https://tieba.baidu.com/mo/q/checkurl');
    $result->query->param(url => $url);
    say $result;
}
