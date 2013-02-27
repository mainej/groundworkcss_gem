require 'rails/generators'

module Groundworkcss
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)
    desc "This generator installs groundworkcss to Asset Pipeline"

    def add_assets
      if ::Rails.version >= '3.1'
        directory "lib/groundworkcss_sub/lib/assets/css", "app/assets/stylesheets/groundworkcss"
        directory "lib/groundworkcss_sub/lib/assets/js", "app/assets/javascripts/groundworkcss"
      else
        directory "lib/groundworkcss_sub/lib/assets", "vendor/assets/groundworkcss"
      end
    end

  end
end
