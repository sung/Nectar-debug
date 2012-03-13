package Nectar::Debug::View::TT;

use strict;
use base 'Catalyst::View::TT';

__PACKAGE__->config({
    INCLUDE_PATH => [
        Nectar::Debug->path_to( 'root', 'src' ),
        Nectar::Debug->path_to( 'root', 'lib' )
    ],
    PRE_PROCESS  => 'config/main',
    WRAPPER      => 'site/wrapper',
    ERROR        => 'error.tt2',
    TIMER        => 0,
    render_die   => 1,
});

=head1 NAME

Nectar::Debug::View::TT - Catalyst TTSite View

=head1 SYNOPSIS

See L<Nectar::Debug>

=head1 DESCRIPTION

Catalyst TTSite View.

=head1 AUTHOR

Sung Gong

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;

