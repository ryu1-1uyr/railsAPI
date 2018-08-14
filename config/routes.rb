Rails.application.routes.draw do



  get 'receipts/get'
  get 'shops/get'
  get 'items/get'




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
