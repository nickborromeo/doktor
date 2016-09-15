require 'rake/testtask'

Rake::TestTask.new do |t|
  require 'bundler'
  Bundler.require
  t.test_files = FileList['test/**/*_test.rb'].exclude('test/fixtures/**/*')
end

namespace :test do
  desc 'Run the Ruby MiniTest suite'
  task :minitest do
    Rake::Task["test"].invoke
  end
end
