require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
    raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
  end

use Rack::MethodOverride
use Rack::Session::Cookie, secret: 'ah9X2tWF/GzQCDE1ANKf5A=='
#should this above line of code be there and if so does the secret need to be different?

use UsersController
run ApplicationController
