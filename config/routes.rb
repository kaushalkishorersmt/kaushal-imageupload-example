Rails.application.routes.draw do
  resources :albums
  mount ImageUploader::UploadEndpoint => "/images/upload"

  resources :albums do
    resources :photos
  end

  root to: "albums#index"
end
