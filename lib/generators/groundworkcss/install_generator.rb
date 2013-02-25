require 'rails/generators'

module Groundworkcss
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)
    desc "This generator installs groundworkcss to Asset Pipeline"

    def add_assets
      directory "groundwork_sub", "vendor/assets/groundwork"
    end

  end
end
