
get '/'do 
	erb :'index'
end

post '/submit' do 
	puts "inside my post route"
	message = params['message']
	p params
	p message
	User.send_message(message)
	redirect '/'
end