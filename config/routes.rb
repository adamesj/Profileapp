Rails.application.routes.draw do
  root 'static_pages#index'

  get 'home', to: 'static_pages#index'
  get 'resume', to: 'static_pages#resume'

  post 'static_pages/thank_you'
end
