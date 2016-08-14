require 'bcrypt'
require 'rubygems'
require 'twilio-ruby'

class User < ActiveRecord::Base
  include BCrypt 

def password 
   @password ||= Password.new(password_hash)
 end

 def password=(new_password)
   @password = Password.create(new_password)
   self.password_hash = @password
 end

 def authenticate(input_password)
   self.password == input_password
 end

 	# put your own credentials here 
	account_sid = 'ACc0bf254a8c877d5742a0b8b1f786b62a' 
	auth_token = 'e4caf215c3e3f88d7e6f73669d384151' 
	 
	# set up a client to talk to the Twilio REST API 
	@client = Twilio::REST::Client.new account_sid, auth_token 

	 ## Logic
	 def self.send_message
		@client.account.messages.create({
			:from => '+16506678264', 
			:to => 4157303524, 
			:body => "Happy birthday Kelvin"  
		}) 
	end
end