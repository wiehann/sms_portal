module SmsPortal
  class Config
    attr_accessor :username, :password

    def initialize
      @username = ENV['SMS_PORTAL_USERNAME']
      @password = ENV['SMS_PORTAL_PASSWORD']
    end
  end
end
