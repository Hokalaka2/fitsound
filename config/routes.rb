Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: '/', sign_out: 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'signup', to: 'pages#signup'
  get 'contact-us', to: 'contacts#new', as: 'new_contacts'
end
