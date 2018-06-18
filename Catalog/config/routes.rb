Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: "json" } do
    resources :profiles, only: [:create, :show, :update]
    resources :series, only: [:create, :show, :index]
    resources :viewers, only: [:create]
    resources :progresses, only: [:create]
    resources :episodes, only: [:index]
  end
end
