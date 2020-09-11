Rails.application.routes.draw do
  get 'tags/index'
  resources :categories
  resources :tags

  get 'category/index'
  get 'category/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #contollrename/actionname
  # in root route contollrename#actionname
  # root to: 'home#index' # or
  root "home#index"
  get 'home/ok'
  get 'home/index'
  get 'home/about', as: :about 
  get 'home/contact', as: :contact
end
