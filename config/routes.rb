Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :rooms ,only: :show do
  	  resources :reservations, only: :create
  	end
  resources :users do
	  resources :hosts do
	  	resources :rooms do
		  	resources :room_steps
	  	end
	  end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
