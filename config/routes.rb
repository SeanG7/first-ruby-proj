# this is the applications routing file that connects incoming requests to controllers / actions

Rails.application.routes.draw do

  # resource method allows us to declare a RESTful resource
  resources :articles

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
