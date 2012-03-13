use strict;
use warnings;

use Nectar::Debug;

my $app = Nectar::Debug->apply_default_middlewares(Nectar::Debug->psgi_app);
$app;

