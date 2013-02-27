require 'rails/generators'

module Groundworkcss
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)
    desc "This generator installs groundworkcss to Asset Pipeline"

    def add_assets
      if ::Rails.version >= '3.1'
        directory "groundworkcss_sub/lib/assets/css", "app/assets/stylesheets/groundworkcss"
        directory "groundworkcss_sub/lib/assets/scss", "app/assets/stylesheets/groundworkcss/scss"
        directory "groundworkcss_sub/lib/assets/js", "app/assets/javascripts/groundworkcss"
        directory "groundworkcss_sub/lib/assets/coffee", "app/assets/javascripts/groundworkcss/coffee"
        directory "groundworkcss_sub/lib/assets/images", "app/assets/images/groundworkcss"
        directory "groundworkcss_sub/lib/assets/font", "public/fonts"
        directory "groundworkcss_sub/lib/apple-icons", "public"
      else
        directory "groundworkcss_sub/lib/assets", "vendor/assets/groundworkcss"
      end
    end

  end
end
