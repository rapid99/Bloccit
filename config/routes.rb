Rails.application.routes.draw do
  resources :topics do
    resources :posts
  end
  resources :sponsored_post
  resources :advertisements
  resources :questions
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  post 'users/confirm' => 'users#confirm'

  get 'about' => 'welcome#about'

  get 'welcome/contact'
  get 'welcome/faq'

  root 'welcome#index'
end
