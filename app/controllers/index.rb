
get '/'do 
	erb :'index'
end

get '/submit' do 
	User.send_message
	redirect '/'
end