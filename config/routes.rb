Reports::Application.routes.draw do
  authenticated :user do
    root :to => 'reports#index'
  end

  devise_scope :user do
    root :to => "devise/sessions#new"
  end

  devise_for :users
  resources :users
  resources :reports
end