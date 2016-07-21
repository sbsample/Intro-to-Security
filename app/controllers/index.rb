get '/' do
	@user = current_user
  erb :"index"
 
 
end

get '/logout' do
  logout!
  redirect '/'
end

get '/test' do

erb :"test"
end
