Rails.application.routes.draw do
  resources :users
  resources :books
  root 'welcome#index'
end
