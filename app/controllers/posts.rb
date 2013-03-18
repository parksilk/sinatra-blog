get "/posts" do
  @posts = Post.all
  erb :posts
end

get "/posts/create" do
  erb :new_post
end

post "/posts" do
  @post = Post.create :title => params[:title],
                      :body  => params[:body]
  redirect "/posts"
end


get "/posts/:id" do
  @post = Post.where("id = ?", params[:id]).first
  erb :post
end

get "/posts/:id/edit" do
  @post = Post.where("id = ?", params[:id]).first
  erb :edit_post
end

post "/posts/:id/edit" do
  @post = Post.where("id = ?", params[:id]).first
  @post.update_attributes :title => params[:title],
                          :body  => params[:body]
  redirect "/posts"
end
