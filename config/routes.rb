Rails.application.routes.draw do


  #課題1 商品データを持つRESTFulAPI
  get '/management/items' => "items#get"
  post '/management/items' => "items#post"
  put '/management/items' => "items#put"
  delete '/management/items' => "items#delete"

  get 'management/items/register' => "items#register"

  #店舗系のAPI
  get '/management/shops' => "shops#get"
  post '/management/shops' => "shops#post"

  post '/management/login' => "shops#login"
  get '/management/login' => "shops#login"

  post '/management/register' => "shops#register"

  get 'management/logout' => "shops#logout"

  get '/management' => "shops#index"

  #店舗が有するデータのAPI
  get '/management/receipts' => "receipts#get"
  post '/management/receipts' => "receipts#post"
  put '/management/receipts' => "receipts#put"
  delete '/management/receipts' => "receipts#delete"


  get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #testRestFulAPI
  get "/" => "home#get"
  post "/" => "home#post"
  put "/" => "home#put"
  delete "/" => "home#delete"


  get "/index" => "home#index"
  get "/top" => "home#top"

end
