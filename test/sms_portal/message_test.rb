require "test_helper"

class SmsPortal::MessageTest < Minitest::Test
  def test_sends_sms_to_the_cellphone_number_with_the_given_message
    cellphone_number = '1234567890'

    response = SmsPortal::Message.new(cellphone_number, 'Message from SMS Portal gem')

    assert response.inspect.include?(cellphone_number)
  end

  def test_sends_sms_to_the_intercept_number_if_present
    cellphone_number = '1234567890'
    intercept_number = '0000000000'
    original_config = SmsPortal.config

    SmsPortal.config = nil
    ENV['SMS_PORTAL_INTERCEPTOR'] = intercept_number

    response = SmsPortal::Message.new(cellphone_number, 'Message from SMS Portal gem')

    assert response.inspect.include?(intercept_number)
    refute response.inspect.include?(cellphone_number)

    SmsPortal.config = original_config
  end
end
