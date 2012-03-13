package Nectar::Debug::Controller::Auth;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Nectar::Debug::Controller::Auth - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched Nectar::Debug::Controller::Auth in Auth.');
}

sub register :Path('/register') {
    my ( $self, $c ) = @_;

	my $new_user= $c->model("NECTAR::User")->new_result({}); # this fails.
	#my $new_user= $c->model("NECTAR::User")->find(2); # this works - updates with no fails.

	use Nectar::Form::Register;
	my $form = Nectar::Form::Register->new(item=>$new_user);

	# Stash the form and the template to render it
	$c->stash(template => 'register.tt2', form=> $form);

	# Process the form with the parameters, a schema and a row object
	$form->process(
		params => $c->request->parameters,
		schema => $c->model("NECTAR")->schema,
	);

	# This returns on GET (new form) and a POSTed form that's invalid.
	#return if !$form->is_valid; 
	return unless $form->validated;

	# Set a status message for the user & return to books list
	#$c->response->redirect($c->uri_for($self->action_for('/'),{mid => $c->set_status_msg("User created")}));
	$c->response->body('created');


}


=head1 AUTHOR

Sung Gong

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
