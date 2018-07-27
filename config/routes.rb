Rails.application.routes.draw do
  devise_for :admins, skip: :registrations

  devise_scope :admin do
    get "admin", to: "devise/sessions#new"

    authenticated :admin do
      root to: "admin/albums#index", as: :authenticated_root
    end

    unauthenticated :admin do
      root to: "devise/sessions#new", as: :unauthenticated_root
    end
  end

  namespace :admin do
    resources :albums do
      delete :purge_photo
    end
  end

  root to: "admin/albums#index"
end
