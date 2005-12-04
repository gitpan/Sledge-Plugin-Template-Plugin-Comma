package Sledge::Plugin::Template::Plugin::Comma;
use strict;
use warnings;
use vars qw($VERSION);
$VERSION = '0.02';

use Template::Plugin::Comma;

sub import {
    my $class = shift;
    my $pkg   = caller;

    $pkg->register_hook(
        BEFORE_DISPATCH => \&set_filter,
    );
}

sub set_filter {
    my $self = shift;

    $self->tmpl->add_option(
        FILTERS => {
            comma => \&Template::Plugin::Comma::commify,
        }
    );
}

1;
__END__

=head1 NAME

Sledge::Plugin::Template::Plugin::Comma - auto use Template::Plugin::Comma

=head1 SYNOPSIS

  # in pages
  package Your::Pages;
  use Sledge::Plugin::Template::Plugin::Comma;

  # in templates
  [% 355555 | comma %]

=head1 DESCRIPTION

Auto use Template::Plugin::Comma.

=head1 AUTHOR

MATSUNO Tokuhiro E<lt>tokuhirom at gmail dot comE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Template::Plugin::Comma>

=cut
