Rails.application.routes.draw do
  resources :products
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
