# NAME

Mus - Mu but with slightly more typing and strict constructors

# SYNOPSIS

    package Foo;
    use Mus;

    ro "hro";
    lazy hlazy => sub { 2 };
    rwp "hrwp";
    rw "hrw";

    my $foo = Foo->new(i_don_exist => 5, hro => "exists", hrwp => "exists", hrw => "exists");

    # Found unknown attribute(s) passed to the constructor: i_dont_exist at (eval 30) line 52.
    #     Foo::new("Foo", "i_dont_exist", 5, "hro", "exists", "hrwp", "exists", "hrw", ...) called at Foo.pl line 9

# DESCRIPTION

Mus imports both [Mu](https://metacpan.org/pod/Mu) and [MooX::StrictConstructor](https://metacpan.org/pod/MooX::StrictConstructor) making it even less work in typing
and reading to set up an object with a strict constructor.

[Mu::Role](https://metacpan.org/pod/Mu::Role) should still be used for roles, as strict constructors don't apply to roles, so I did not duplicate this.

# AUTHOR

Adam Hopkins <srchulo@cpan.org>

# COPYRIGHT

Copyright 2019- Adam Hopkins

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

- [Mu](https://metacpan.org/pod/Mu)
- [MooX::StrictConstructor](https://metacpan.org/pod/MooX::StrictConstructor)
