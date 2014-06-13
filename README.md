# SmsPortal

Send SMS messages using [SMSPortal](http://www.smsportal.co.za)

## Installation

Install the gem:

    $ gem install sms_portal

Then set your credentials:

    $ export SMS_PORTAL_USERNAME=sms_portal_username
    $ export SMS_PORTAL_PASSWORD=sms_portal_password

## Usage

	SmsPortal.deliver('0821234567', 'Your message body here')
