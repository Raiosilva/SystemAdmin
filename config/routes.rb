require 'sidekiq/web'

Rails.application.routes.draw do

  namespace :admin do
   resources :clients
   resources :suppliers
   resources :products
   resources :services
   resources :discounts
   resources :campaigns
   resources :sells
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  mount Sidekiq::Web => '/sidekiq'
end
