if RUBY_ENGINE == 'opal'
  require 'reactrb'
  require 'reactrb-router/component'
  require 'reactrb-router/history'
  require 'reactrb-router/router'
  require 'reactrb-router/version'
else
  require 'opal'
  require 'reactrb-ruby'
  require 'reactrb-router/window_location'
  require 'reactrb-router/version'

  Opal.append_path File.expand_path('../', __FILE__).untaint
  Opal.append_path File.expand_path('../../vendor', __FILE__).untaint
end
