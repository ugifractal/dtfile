require 'dtfile'
require 'rails'

module Dtfile
  class Engine < Rails::Engine
    paths.config.locales      = "config/locales/en.yml"
  end
end
