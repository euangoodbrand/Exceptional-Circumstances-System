Rails.application.routes.draw do

  mount EpiCas::Engine, at: "/"

  resources :ecfs
  resources :affected_units

  # resources :posts do
  #   member do
  #     delete :purge_avatar
  #   end
  # end

  delete "attachments/:id/purge", to: "attachments#purge", as: "purge_attachment"

  match "/403", to: "errors#error_403", via: :all
  match "/404", to: "errors#error_404", via: :all
  match "/422", to: "errors#error_422", via: :all
  match "/500", to: "errors#error_500", via: :all

  get :ie_warning, to: 'errors#ie_warning'

  root to: "pages#home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
