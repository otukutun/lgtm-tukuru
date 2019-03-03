Rails.application.routes.draw do
  get 'docs/api'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'images#index'
  resources :images, only: %i[index new create show], param: :slug

  namespace :api do
    resources :images, only: %i[index], param: :slug, :defaults => { :format => 'json' }
  end
end
