Rails.application.routes.draw do
  devise_for :users
  resources :users do
	  resources :hosts do
	  	resources :rooms do
	  		collection do
		  		get 'room','bedrooms','bed_details','bathrooms','locations','amenities','spaces','image','description','title','phone'
	  		end
	  	end
	  end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
