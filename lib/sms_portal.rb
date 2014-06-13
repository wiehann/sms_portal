require "httparty"
require "sms_portal/version"
require "sms_portal/message"

module SmsPortal
  def self.deliver(number, message)
    message = Message.new(number, message)
    message.deliver!
  end
end
