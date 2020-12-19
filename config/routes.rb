Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }, defaults: { format: :json }
  resources :events
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
