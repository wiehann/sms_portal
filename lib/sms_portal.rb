require "httparty"
require "sms_portal/version"
require "sms_portal/message"
require "sms_portal/config"

module SmsPortal
  class << self
    attr_writer :config
  end

  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield(config)
  end

  def self.deliver(recipient, message)
    message = Message.new(recipient, message)
    message.deliver!
  end
end
