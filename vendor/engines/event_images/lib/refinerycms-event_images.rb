require 'refinerycms-base'

module Refinery
  module EventImages

    class << self
      attr_accessor :root
      def root
        @root ||= Pathname.new(File.expand_path('../../', __FILE__))
      end
    end

    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "event_images"
          plugin.pathname = root
          plugin.menu_match = /(admin|refinery)\/(events|event_images)$/
          plugin.activity = {
            :class => EventImage,
            :title => 'data'
          }
        end
      end
    end
  end
end

