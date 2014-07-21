require 'rubygems'
require 'twilio-ruby'

  def account_setup
    account_sid = 'AC8889934d768834bfdfe8ff3bb011c78c'
    auth_token = '4ab687030110f31b65ba08835eaa9729'
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_text(phone_number, body)
    account_setup
    @client.account.messages.create(
    :from => '+441565760062',
    :to => phone_number,
    :body => body)
  end