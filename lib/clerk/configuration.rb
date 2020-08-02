module Clerk
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :silence_warnings,
                  :logger

    def initialize
      @silence_warnings = false
    end
  end
end
