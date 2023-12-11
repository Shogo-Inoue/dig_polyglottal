Rails.application.routes.draw do
  root "note_apps#index"
  resources :note_apps
end
