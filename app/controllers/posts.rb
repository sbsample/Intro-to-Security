
get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts'
end

post "/posts" do
  @post = Post.new(params)
  @post.save!
  redirect "posts/#{@post.id}"
end

get "/posts/new" do

  @post = Post.new
  erb :'new_post'
end




