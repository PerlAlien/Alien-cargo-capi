package Alien::cargo::capi;

use strict;
use warnings;
use parent qw( Alien::Base );
use 5.008004;

# ABSTRACT: Find or build the cargo capi command
# VERSION

=head1 SYNOPSIS

 use Alien::cargo::capi;
 use Env qw( @PATH );

 unshift @PATH, Alien::cargo::capi->bin_dir;
 system 'cargo', 'capi', 'build';

=head1 DESCRIPTION

This L<Alien> provides the L<cargo capi|https://crates.io/crates/cargo-c> command.

=head1 METHODS

=head2 bin_dir

 my @dir = Alien::cargo::capi->bin_dir;

Returns the list of directories (if any) that need to be added to the C<PATH> to use
C<cargo cpi>.

=cut

sub bin_dir {
    my $self = shift;
    my @dirs = Alien::cargo->bin_dir;
    unshift @dirs, $self->SUPER::bin_dir;
    @dirs;
}

1;

=head1 SEE ALSO

=over 4

=item L<Alien::Rust>

=item L<Alien::cargo>

=item L<Alien::cargo::clone>

=item L<FFI::Build::File::Cargo>

=back

=cut
