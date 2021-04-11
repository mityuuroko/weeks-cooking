Rails.application.routes.draw do
  root to: 'items#top'
  resources :items
end
