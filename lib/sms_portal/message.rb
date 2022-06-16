module SmsPortal
  class Message
    include HTTParty
    base_uri "http://www.mymobileapi.com"

    def initialize(recipient, message)
      @options = {
        query: {
          numto:     SmsPortal.config.interceptor || recipient,
          data1:     message,
          type:     'sendparam',
          username:  SmsPortal.config.username,
          password:  SmsPortal.config.password
        },
        format: :xml
      }
    end

    def deliver!
      self.class.get('/api5/http5.aspx', @options).parsed_response
    end
  end
end
