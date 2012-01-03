#!/usr/bin/env perl

use 5.006;
use ExtUtils::MakeMaker;

my %args = (
  NAME => 'Stuff::Exception',
  VERSION_FROM => 'lib/Stuff/Exception.pm',
  AUTHOR => 'Nikita Zubkov <nikzubkov@gmail.com>',
  PREREQ_PM => {
    'Stuff' => 0,
  },
  test => { TESTS => 't/*.t' }
);

my $mmver = $ExtUtils::MakeMaker::VERSION;

$args{LICENSE}= 'artistic_2' if $mmver >= 6.3002;

WriteMakefile( %args );
