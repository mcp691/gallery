Rails.application.routes.draw do
  resources :entries
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products

  post 'payments/create'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  post '/thank_you', to: 'static_pages#thank_you'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
