# rails new_app_name -m viget.rb

# freeze rails
run 'sed -i .bak -e "/^RAILS_GEM_VERSION/s/^/# /" config/environment.rb && rm config/environment.rb.bak'
freeze!

# install gems
gem 'mocha', :version => '~> 0.9.2'
gem 'thoughtbot-factory_girl', :lib => 'factory_girl', :source => 'http://gems.github.com', :version => '~> 1.1.3'
gem 'thoughtbot-shoulda', :lib => 'shoulda', :source => 'http://gems.github.com', :version => '~> 2.0.5'
rake 'gems:install gems:unpack'

# install plugins
plugin 'hoptoad_notifier', :git => 'git://github.com/thoughtbot/hoptoad_notifier.git'
plugin 'jrails', :svn => 'http://ennerchi.googlecode.com/svn/trunk/plugins/jrails'
plugin 'model_generator_with_factories', :git => 'git://github.com/vigetlabs/model_generator_with_factories.git'
plugin 'viget_deployment', :git => 'git://github.com/vigetlabs/viget_deployment.git'
plugin 'vl_cruise_control', :git => 'git://github.com/vigetlabs/vl_cruise_control.git'

# install .gitignore
run 'cat <<E0F >.gitignore
.DS_Store
config/database.yml
coverage
db/*.sqlite3
doc/api
doc/app
log/*.log
tmp/**/*
E0F'

# generate viget_deployment stuff
generate :viget_deployment

# clean up
run 'cp config/database.yml-sample config/database.yml'
run 'rm -rf public/index.html log/* test/fixtures'
inside ('public/javascripts') do
  run 'rm -f dragdrop.js controls.js effects.js prototype.js'
end
