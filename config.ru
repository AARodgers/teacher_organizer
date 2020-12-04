# frozen_string_literal: true

require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use Rack::Session::Cookie, secret: 'ah9X2tWF/GzQCDE1ANKf5A=='

use SessionsController
use StandardsController
use UsersController
run ApplicationController
