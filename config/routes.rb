Rails.application.routes.draw do
  devise_for :admins, skip: :registrations

  devise_scope :admin do
    get 'admin', to: 'devise/sessions#new'
  end

  namespace :admin do
    resources :albums do
      resources :images
    end
  end

  root to: "admin/albums#index"
end
