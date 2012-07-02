# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemtest/)
end

guard 'pow' do
  watch('.powrc')
  watch('.powenv')
  watch('.rvmrc')
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.*\.rb$})
  watch(%r{^config/initializers/.*\.rb$})
end

# guard 'livereload' do
#   watch(%r{app/views/.+\.(erb|haml|slim)})
#   watch(%r{app/helpers/.+\.rb})
#   watch(%r{app/assets/.+\.(css|js|html|coffee|handlebars)})
#   watch(%r{config/locales/.+\.yml})
#   # Rails Assets Pipeline
#   watch(%r{(app|vendor)/assets/\w+/(.+\.(css|js|html)).*})  { |m| "/assets/#{m[2]}" }
# end

guard 'minitest', :drb => true do
  watch(%r|^test/(.*)_spec\.rb|)
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})  { |m| "test/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^test/spec_helper\.rb|)    { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "test/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "test/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["test/routing/#{m[1]}_routing_spec.rb", "test/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "test/acceptance/#{m[1]}_spec.rb"] }
  watch(%r{^test/support/(.+)\.rb$})                  { "spec" }
  watch('config/routes.rb')                           { "test/routing" }
  watch('app/controllers/application_controller.rb')  { "test/controllers" }

  # Capybara request specs
  watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "test/requests/#{m[1]}_spec.rb" }
end

guard 'spork', :test_unit => true, :rspec => false, :cucumber => false, :bundler => true do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.*\.rb$})
  watch(%r{^config/initializers/.*\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('test/spec_helper.rb') { :minitest }
end
