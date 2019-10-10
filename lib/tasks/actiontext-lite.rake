# frozen_string_literal: true

namespace :action_text_lite do
  desc "Copy over the migration"
  task install: %w( copy_migrations )

  task :copy_migrations do
    Rake::Task["railties:install:migrations"].reenable # Otherwise you can't run 2 migration copy tasks in one invocation
    Rake::Task["action_text:install:migrations"].invoke
  end
end
