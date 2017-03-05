# this is the applications routing file that connects incoming requests to controllers / actions

Rails.application.routes.draw do

  # resource method allows us to declare a RESTful resource
  resources :articles do
    #adds a route into articles to see comments
    #comments is a nested resource within articles
    resources :comments
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
