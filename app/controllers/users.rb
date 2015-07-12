get '/users/new' do
  erb :"/users/sign_up"
end

get '/users/login' do
  erb :"/users/sign_in"
end

post '/users/' do
   user = User.new(params)
  if user.save
    login(user)
    redirect "/users/#{user.id}"
  else
    redirect '/users/new'
  end
end

post '/users/login' do
  user = User.find_by(username: params[:username])
  if user && user.password == params[:password]
    login(user)
    redirect "/users/#{user.id}"
  else
    redirect '/users/sign_in'
  end
end

get '/users/:id' do
  @user = User.where(id: params[:id]).first

  erb :"/users/profile"
end

