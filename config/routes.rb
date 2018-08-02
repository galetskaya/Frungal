Rails.application.routes.draw do
  devise_for :admins, skip: :registrations

  devise_scope :admin do
    get "admin", to: "admin/albums#index"

    authenticated :admin do
      root to: "pages#landing", as: :authenticated_root
    end

    unauthenticated :admin do
      root to: "pages#landing", as: :unauthenticated_root
    end
  end

  namespace :admin do
    resources :albums do
      delete :purge_photo
    end
  end

  resources :pages, only: [] do
    get :landing, on: :collection
  end
end
