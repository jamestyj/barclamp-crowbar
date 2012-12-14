### Rails RSpec Testing

Crowbar also includes RSpecs for more complex unit testing needs. The default
unit tests will be phased out over time.

The current tests reside under spec. This test should focus on model and
non-visible controller tests. BDD tests should focus on UI/API controller and
view testing.

Steps to execute tests on an installed admin node:

1. `cd /opt/dell/crowbar_framework`
1. `bundle exec rake db:drop db:migrate db:fixtures:dump spec`

NOTE: The database needs to be reset after the spec run. This should be fixed.

Each barclamp can add tests by dumping them into the spec directories. The
spec tests will pick them up and attempt to run them.
