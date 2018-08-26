Rails.application.routes.draw do


  resources :accounts
  #課題1 商品データを持つRESTFulAPI
  get '/management/items' => "items#get"
  post '/management/items' => "items#post"
  put '/management/items' => "items#put"
  delete '/management/items' => "items#delete"

  get '/management/items/register' => "items#register"

  get '/management/items/show' => "items#show"

  #店舗系のAPI
  get '/management/shops' => "shops#get"
  post '/management/shops' => "shops#post"

  post '/management/login' => "shops#login"
  get '/management/login' => "shops#login"

  post '/management/register' => "shops#register"

  get 'management/logout' => "shops#logout"

  get '/management' => "shops#index"

  post '/management/shop/append/:id' => "shops#entry"
  post '/management/shop/remove/:id' => "shops#remove"

end
