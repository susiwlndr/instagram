Rails.application.routes.draw do
  devise_for :users

  resources :posts
	root "posts#index"
	resources :posts, only: [:show, :new, :create] do 
  	resources :comment_posts, only: [:create]
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
