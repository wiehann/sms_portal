module SmsPortal
  class Message
    include HTTParty
    base_uri "http://www.mymobileapi.com"

    def initialize(number, message)
      @options = {
        query: {
          numto:     number,
          data1:     message,
          type:     'sendparam',
          username:  ENV['SMS_PORTAL_USERNAME'],
          password:  ENV['SMS_PORTAL_PASSWORD']
        }
      }
    end

    def deliver!
      self.class.get('/api5/http5.aspx', @options)
    end
  end
end
