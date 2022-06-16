# SmsPortal

Send SMS messages using [SMSPortal](http://www.smsportal.co.za)

## Installation

Install the latest release

```
$ gem install sms_portal
```

Or add it to your Gemfile

```
gem 'sms_portal', '0.1.0'
```

## Configuration

Either set the following environment variables

```
$ export SMS_PORTAL_USERNAME=sms_portal_username
$ export SMS_PORTAL_PASSWORD=sms_portal_password
```

Or in Rails, you can create an initializer

```
# config/initializers/sms_portal.rb

SmsPortal.configure do |config|
  config.username = sms_portal_username
  config.password = sms_portal_password
end
```

To intercept messages in testing/development environments there is an extra configuration option to route all messages to that number.
```
# as environment variable
$ export SMS_PORTAL_INTERCEPTOR=phone_number

# or in config/initializers/sms_portal.rb
SmsPortal.configure do |config|
  config.interceptor = phone_number
end
```

## Usage

```
SmsPortal.deliver('0821234567', 'Your message body here')
```
