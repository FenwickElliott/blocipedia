Rails.application.routes.draw do
  # get 'wikis/index'
  #
  # get 'wikis/show'
  #
  # get 'wikis/new'
  #
  # get 'wikis/edit'

  resources :wikis

  resources :charges, only: [:new, :create, :thanks]

  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  root 'wikis#index'
end
