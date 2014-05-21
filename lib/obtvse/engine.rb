require 'rails_12factor'
require 'sorcery'
require 'bcrypt'
require 'slim'
require 'turbolinks'
require 'jquery-rails'
require 'compass-rails'
require 'chronic'
require 'stringex'
require 'kramdown'
require 'coderay'
require 'kaminari'
require 'aws-sdk'

module Obtvse
  class Engine < ::Rails::Engine
    isolate_namespace Obtvse

    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
  end
end