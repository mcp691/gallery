Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products
  
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
