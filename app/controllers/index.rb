get '/'do 
	erb :'index'
end

get '/boostrap' do 
	erb :'/bootstrap'
end

post '/submit' do 
	message = params['message']
	User.send_message(message)
	redirect '/'
end