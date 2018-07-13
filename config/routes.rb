Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: "json" } do
    resources :profiles, only: [:create, :index, :update]
    resources :series, only: [:create, :show, :index]
    resources :viewers, only: [:create]
    resources :progresses, only: [:create]
    resources :episodes, only: [:index]

    resource :historic, only: [:show]
  end
end
