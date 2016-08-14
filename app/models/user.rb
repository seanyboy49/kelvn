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

sid = ENV['TWILIO_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']
my_number = ENV['TWILIO_NUMBER']

	 
	# set up a client to talk to the Twilio REST API 
	@client = Twilio::REST::Client.new sid, auth_token

	 ## Logic
	 def self.send_message
		@client.account.messages.create({
			:from => +16506678264, 
			:to => 4157303524, 
			:body => "Happy birthday Kelvin"  
		}) 
	end
end