Rails.application.routes.draw do
  devise_for :admins, skip: :registrations
  
  devise_scope :admin do
    get 'admin', to: 'devise/sessions#new'
  end
  
  resources :albums do
    resources :images
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
