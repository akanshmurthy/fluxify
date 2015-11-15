module Fluxify
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Adds Flux pattern and files to app with placeholders"
      class_option :orm

      def install_assets
        require 'rails'

        template '../templates/actions/general_actions.js',
'app/assets/javascripts/actions/general_actions.js'
        template '../templates/components/general.js.jsx',
'app/assets/javascripts/components/general.js.jsx'
        template '../templates/constants/general_constants.js',
'app/assets/javascripts/constants/general_constants.js'
        template '../templates/dispatcher/dispatcher.js',
'app/assets/javascripts/dispatcher/dispatcher.js'
        template '../templates/stores/general_store.js',
'app/assets/javascripts/stores/general_store.js'
        template '../templates/util/general_util.js',
'app/assets/javascripts/util/general_util.js'
      end

      def self.source_root
        File.expand_path("../templates", __FILE__)
      end
    end
  end
end