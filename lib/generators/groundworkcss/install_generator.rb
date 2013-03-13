require 'rails/generators'

module Groundworkcss
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)
    desc "This generator installs groundworkcss to Asset Pipeline"

    def add_assets
      if ::Rails.version >= '3.1'
        # place source files in assets
        directory "groundworkcss_sub/src/scss", "app/assets/stylesheets/groundworkcss"
        directory "groundworkcss_sub/src/coffee", "app/assets/javascripts/groundworkcss"
        # place compiled files in public
        directory "groundworkcss_sub/css", "public/groundworkcss/css"
        directory "groundworkcss_sub/js", "public/groundworkcss/js"
        directory "groundworkcss_sub/images", "public/groundworkcss/images"
        directory "groundworkcss_sub/font", "public/font"
      else
        directory "groundworkcss_sub/", "vendor/assets/groundworkcss"
      end
    end

  end
end
