Rails.application.routes.draw do
	namespace :api, defaults: {format: :json} do
		resources :people, except: [:new, :edit]
		resources :vehicles, except: [:new, :edit]
		resources :driver_histories, except: [:new, :edit]
		resources :quotes, except: [:new, :edit]
	end
  resources :driver_histories
  resources :vehicles
  resources :people
  resources :quotes

  root 'people#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
