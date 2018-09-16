Rails.application.routes.draw do

  devise_for :users

  resources :users do
   resources :items
  end
  
  post 'items/create'

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

end

# use :only to eliminate unneeded routes :only => [:some_index]
#priority is based on order of creation+ first created is highest priority