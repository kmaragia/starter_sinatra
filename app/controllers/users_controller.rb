class UserController < Sinatra::Base
  set :views, "app/views/users"
  set :method_override, true

  get '/users' do
    @users = User.all
    erb :index
  end

  post '/users' do
    name = params[:name]
    bank = params[:bank]
    user = User.create(name: name)
    Bankaccount.create(user_id: user.id, bank: bank)
    redirect "/users/#{user.id}"
  end

  get '/users/new' do
    erb :new
  end

  get '/users/:id' do
    id = params[:id]
    @user = User.find(id)
    erb :show
  end

  put '/users/:id' do
    id = params[:id]
    name = params[:name]
    User.update(id, name: name)
    redirect "/users/#{id}"
  end

  get '/users/:id/edit' do
    id = params[:id]
    @user = User.find(id)

    erb :edit
  end

  delete '/users/:id' do
    id = params[:id]
    User.destroy(id)
    redirect '/users'
  end
end
