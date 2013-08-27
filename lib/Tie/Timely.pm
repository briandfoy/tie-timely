package Tie::Timely;
use strict;

use Carp qw(croak);

our $VERSION = '1.001';

sub TIESCALAR {
	my $class      = shift;
	my $value      = shift;
	my $lifetime   = shift;

	my $self = bless [ undef, $lifetime, time ], $class;

	$self->STORE( $value );

	return $self;
	}

sub FETCH { time - $_[0]->[2] > $_[0]->[1] ? () : $_[0]->[0] }

sub STORE { @{ $_[0] }[0,2] = ( $_[1], time ) }

1;

__END__

=encoding utf8

=head1 NAME

Tie::Timely - Time out scalar values

=head1 SYNOPSIS

	use Tie::Timely;

=head1 DESCRIPTION

Self-destructing values

=head1 SOURCE AVAILABILITY

This source is in Github:

	http://github.com/briandfoy/tie-timely/

=head1 AUTHOR

brian d foy, C<< <brian.d.foy@gmail.com> >>

=head1 COPYRIGHT AND LICENSE


Copyright (c) 2005-2013, brian d foy, All Rights Reserved.

You may redistribute this under the same terms as Perl itself.

=cut
