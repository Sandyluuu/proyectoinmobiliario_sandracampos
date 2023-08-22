Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  resources :properties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root 'properties#index'

   scope '/(:locale)', defaults: { locale: 'en' }, constraints: { locale: /en|es/ } do
    resources :posts

    get '/', to: 'properties#index'
    get '/', to: 'properties#form'
    get '/', to: 'properties#edit'
    get '/', to: 'properties#new'
  end

end
