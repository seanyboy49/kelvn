# require 'rubygems'
# require 'twilio-ruby'

# class Twilio 
# 		# put your own credentials here 
# 	account_sid = 'ACc0bf254a8c877d5742a0b8b1f786b62a' 
# 	auth_token = 'e4caf215c3e3f88d7e6f73669d384151' 
	 
# 	# set up a client to talk to the Twilio REST API 
# 	@client = Twilio::REST::Client.new account_sid, auth_token 

# 	 ## Logic
# 	 def self.send_message
# 		@client.account.messages.create({
# 			:from => '+16506678264', 
# 			:to => 4157303524, 
# 			:body => "Happy birthday Kelvin"  
# 		}) 
# 	end

# end

# Twilio.send_message