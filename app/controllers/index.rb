get '/' do
  erb :"index"
end

get '/logout' do
  logout!
  redirect '/'
end
