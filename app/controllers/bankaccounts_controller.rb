class BankaccountController < Sinatra::Base

  set :views, "app/views/bankaccounts"
  set :method_override, true

  get '/bankaccounts' do
    @bankaccounts = Bankaccount.all
    erb :index
  end

  get '/bankaccounts/new' do
    erb :new
  end

  get '/bankaccounts/:id' do
    id = params[:id]
    @bankaccount = Bankaccount.find(id)
    erb :show
  end

  post '/bankaccounts' do
    bank = params[:bank]
    user = params[:user]
    new_bank = Bankaccount.create(user_id: user, bank: bank)
    redirect "bankaccounts/#{new_bank.id}"
  end

  get '/bankaccounts/:id/edit' do
    id = params[:id]
    @bankaccount = Bankaccount.find(id)
    erb :edit
  end

  put '/bankaccounts/:id' do
    id = params[:id]
    bank = params[:bank]
    user = params[:user]
    new_bank = Bankaccount.update(id, user_id: user, bank: bank)
    redirect "bankaccounts/#{new_bank.id}"
  end

  delete '/bankaccounts/:id' do
    id = params[:id]
    Bankaccount.delete(id)
    redirect '/bankaccounts'
  end

end
