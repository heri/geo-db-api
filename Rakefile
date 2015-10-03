# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

require_relative 'config/environments/test'
require_relative 'config/environments/development'
require_relative 'config/environments/production'

namespace :index do
  desc "Indexes names for geo data"
  task :fuzzy => :environment do

    Airport.bulk_update_fuzzy_name
    City.bulk_update_fuzzy_name
    Country.bulk_update_fuzzy_formal
    Lake.bulk_update_fuzzy_name
    Port.bulk_update_fuzzy_name
    Region.bulk_update_fuzzy_name
    Timezone.bulk_update_fuzzy_name_alt

  end
end
