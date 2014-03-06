Clonemarks::Application.routes.draw do

	devise_for :users

	resources :topics

  resources :bookmarks

  get "welcome/index"

  root :to => 'welcome#index'

end
