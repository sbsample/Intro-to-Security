get '/' do
  erb :"index"
  @current_user = current_user
 
end

get '/logout' do
  logout!
  redirect '/'
end
