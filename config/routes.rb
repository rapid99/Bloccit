Rails.application.routes.draw do


  resources :topics do
    resources :posts
  end
  resources :sponsored_post
  resources :advertisements
  resources :questions

  get 'about' => 'welcome#about'

  get 'welcome/contact'
  get 'welcome/faq'

  root 'welcome#index'
end
