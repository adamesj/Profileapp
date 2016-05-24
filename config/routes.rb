Rails.application.routes.draw do
  root 'static_pages#index'

  get 'home', to: 'static_pages#index'

  post 'static_pages/thank_you'
end
