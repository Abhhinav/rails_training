Rails.application.routes.draw do

  get "home/read/:id", to: "home#read", :as => :post_read
  get "home/:tag/posts", to: "home#tag_search", :as => :tag_search
  get "home/posts/:category", to: "home#category_search_posts", :as => :category_search_posts
  resources :posts
  resources :categories
  resources :tags
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
