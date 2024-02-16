require 'thor'
require 'gis/config/version'

module GISTools
  class CLI < Thor

    ############################################################################
    ############################################################################
    desc "version", "Current version of the GIS Tools CLI."
    def version
      puts GISTools::VERSION + " " + GISTools::DATE
    end

  end
end