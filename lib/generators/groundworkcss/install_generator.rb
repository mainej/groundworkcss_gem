require 'rails/generators'

module Groundworkcss
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)
    desc "This generator installs groundworkcss to Asset Pipeline"

    def add_assets
      if ::Rails.version >= '3.1'
        # place source files in assets
        directory "groundworkcss_sub/lib/assets/scss", "app/assets/stylesheets/groundworkcss"
        directory "groundworkcss_sub/lib/assets/coffee", "app/assets/javascripts/groundworkcss"
        # place compiled files in public
        directory "groundworkcss_sub/lib/assets/css", "public/groundworkcss/css"
        directory "groundworkcss_sub/lib/assets/js", "public/groundworkcss/js"
        directory "groundworkcss_sub/lib/assets/images", "public/groundworkcss/images"
        directory "groundworkcss_sub/lib/assets/font", "public/groundworkcss/font"
        directory "groundworkcss_sub/lib/apple-icons", "public/groundworkcss/apple-icons"
      else
        directory "groundworkcss_sub/lib/assets", "vendor/assets/groundworkcss"
      end
    end

  end
end
