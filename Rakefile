require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'Set up the Gem after creating an empty project from template.'
task :init do
  Dir.glob('GEM.*') do |f|

    sh 'mv', f, f.gsub('GEM', ENV['name'])
  end
  Dir.glob('*/*GEM.*') do |f|

    sh 'mv', f, f.gsub('GEM', ENV['name'])
  end
end

# Test Setup
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/test_*.rb', 'test/**/*_test.rb']
  p t
end

desc 'Run tests'
task :test
