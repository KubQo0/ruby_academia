Rails.application.routes.draw do
  get "about", to: "pages#about"

  get "notes", to: "notes#index"
  get "notes/new", to: "notes#new"
  post "notes", to: "notes#create"
  get "notes/:id", to: "notes#show", as: :note
  patch "notes/:id", to: "notes#update"
  delete "notes/:id", to: "notes#destroy"
  get "notes/:id/edit", to: "notes#edit", as: :edit_note

  get "items", to: "items#index"
  get "items/new", to: "items#new"
  post "items", to: "items#create"
  get "items/:id", to: "items#show", as: :item
  patch "items/:id", to: "items#update"
  delete "items/:id", to: "items#destroy"
  get "items/:id/edit", to: "items#edit", as: :edit_item

  root "pages#home"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
