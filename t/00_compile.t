use strict;
use Test::More tests => 1;

sub register_hook { 'DUMMY' }
BEGIN { use_ok 'Sledge::Plugin::Template::Plugin::Comma' }
