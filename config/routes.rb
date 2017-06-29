Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'signup', to: 'pages#signup'
  get 'contact-us', to: 'contacts#new', as: 'new_contacts'
end
