use utf8;
package Nectar::Schema::NECTAR::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Nectar::Schema::NECTAR::Result::User

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<Users>

=cut

__PACKAGE__->table("Users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 username

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 password

  data_type: 'text'
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 first_name

  data_type: 'varchar'
  is_nullable: 1
  size: 700

=head2 last_name

  data_type: 'varchar'
  is_nullable: 1
  size: 700

=head2 roles

  data_type: 'varchar'
  default_value: 'member'
  is_nullable: 1
  size: 255

=head2 active

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 created

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_log

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 md5

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "username",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "password",
  { data_type => "text", is_nullable => 0 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "first_name",
  { data_type => "varchar", is_nullable => 1, size => 700 },
  "last_name",
  { data_type => "varchar", is_nullable => 1, size => 700 },
  "roles",
  {
    data_type => "varchar",
    default_value => "member",
    is_nullable => 1,
    size => 255,
  },
  "active",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "created",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "last_log",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "md5",
  { data_type => "varchar", is_nullable => 1, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<email>

=over 4

=item * L</email>

=back

=cut

__PACKAGE__->add_unique_constraint("email", ["email"]);

=head2 C<username>

=over 4

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint("username", ["username"]);


# Created by DBIx::Class::Schema::Loader v0.07014 @ 2012-03-13 11:58:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6PMYg3okGKkTnif8vR4o8A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
