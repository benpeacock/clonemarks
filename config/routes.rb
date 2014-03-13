Clonemarks::Application.routes.draw do

  get "emails/create"

  devise_for :users

  resources :topics

  resources :bookmarks do
  	resources :likes
  end

  get "welcome/index"

  get "topics/index"

  get "likes/new"

  post '/emails' => 'emails#create'

  root :to => 'topics#index'

end
