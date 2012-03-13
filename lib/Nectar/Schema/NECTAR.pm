use utf8;
package Nectar::Schema::NECTAR;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use Moose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces;


# Created by DBIx::Class::Schema::Loader v0.07014 @ 2012-03-13 11:58:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:b17vnge+9Ory4y4p1Dxfbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
1;
