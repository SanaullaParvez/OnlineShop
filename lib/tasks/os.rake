namespace :db do
  desc "This task store the value of seed"
  task :os => :environment do
    Rake::Task["db:seed"].execute
  end
end
