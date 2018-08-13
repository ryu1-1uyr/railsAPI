Rails.application.routes.draw do
  get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "home#get"
  post "/" => "home#post"
  put "/" => "home#put"
  delete "/" => "home#delete"

  get "/index" => "home#index"
  get "/top" => "home#top"

end
