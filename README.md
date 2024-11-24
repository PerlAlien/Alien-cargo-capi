# Alien::cargo::capi ![static](https://github.com/PerlAlien/Alien-cargo-capi/workflows/static/badge.svg) ![linux](https://github.com/PerlAlien/Alien-cargo-capi/workflows/linux/badge.svg)

Find or build the cargo capi command

# SYNOPSIS

```perl
use Alien::cargo::capi;
use Env qw( @PATH );

unshift @PATH, Alien::cargo::capi->bin_dir;
system 'cargo', 'capi', 'build';
```

# DESCRIPTION

This [Alien](https://metacpan.org/pod/Alien) provides the [cargo capi](https://crates.io/crates/cargo-c) command.

# METHODS

## bin\_dir

```perl
my @dir = Alien::cargo::capi->bin_dir;
```

Returns the list of directories (if any) that need to be added to the `PATH` to use
`cargo cpi`.

# SEE ALSO

- [Alien::Rust](https://metacpan.org/pod/Alien::Rust)
- [Alien::cargo](https://metacpan.org/pod/Alien::cargo)
- [Alien::cargo::clone](https://metacpan.org/pod/Alien::cargo::clone)
- [FFI::Build::File::Cargo](https://metacpan.org/pod/FFI::Build::File::Cargo)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
