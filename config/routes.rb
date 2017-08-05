Rails.application.routes.draw do
  devise_for :users
  resources :rooms ,only: :show
  resources :users do
	  resources :hosts do
	  	resources :rooms do
		  	resources :room_steps
	  	end
	  end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
