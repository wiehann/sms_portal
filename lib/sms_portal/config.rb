module SmsPortal
  class Config
    attr_accessor :username, :password, :interceptor

    def initialize
      @username = ENV['SMS_PORTAL_USERNAME']
      @password = ENV['SMS_PORTAL_PASSWORD']
      @interceptor = ENV['SMS_PORTAL_INTERCEPTOR']
    end
  end
end
