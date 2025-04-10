Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Define the root path and resources
  root "infrastructures#index"
  
  resources :infrastructures do
    resources :carbon_calculations, only: [:new, :create, :show]
    get :export_csv, on: :collection
  end
end
