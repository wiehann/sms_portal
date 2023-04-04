require "test_helper"

class SmsPortalTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SmsPortal::VERSION
  end

  def test_send_an_sms_to_the_given_number_with_the_given_message
    delivery_response = { "api_result"=>{ "send_info"=>{"eventid"=>'12345'}, "call_result"=>{"result"=>"True", "error"=>nil} } }
    SmsPortal::Message.any_instance.expects(:deliver!).returns(delivery_response)
    SmsPortal.deliver('0000000000', 'Message from SMS Portal gem')
  end
end
