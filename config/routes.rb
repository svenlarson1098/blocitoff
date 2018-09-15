Rails.application.routes.draw do
  
  devise_for :users
  
  resources :users do
    resources :items, :only => [:create]
  end  
    
  get 'items/create'
  
  get 'users/show'
  
  get 'welcome/index'

  get 'welcome/about'
  
  root 'items#create'
  
end

# use :only to eliminate unneeded routes :only => [:some_index]
#priority is based on order of creation+ first created is highest priority