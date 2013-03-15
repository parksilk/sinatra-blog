get "/posts" do
  @posts = Post.all
  erb :posts
end

get "/posts/new" do
  erb :new_post
end

post "/posts" do
  puts params
end
