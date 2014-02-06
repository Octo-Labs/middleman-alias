require "bundler/gem_tasks"

desc "Run tests for travis"
task :travis do
  ["cucumber"].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("export DISPLAY=:99.0 && bundle exec #{cmd}")
    raise "#{cmd} failed!" unless $?.exitstatus == 0
  end
end

desc 'Default: run tests.'
task :default => ['travis']
