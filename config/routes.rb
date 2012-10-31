KagyuVitamin::Application.routes.draw do
 
  root :to => 'quotes#today'
 
  get '/quotes'           => 'quotes#index',   :as => 'quotes'
  post '/quotes'          => 'quotes#create'
  get '/quotes/new'       => 'quotes#new',     :as => 'new'
  get '/quotes/today'     => 'quotes#today',   :as => 'today'
  
  get '/quotes/teacher/:id'    => 'quotes#teacher',   :as => 'teacher'
  
  get '/quotes/:id'       => 'quotes#show',    :as => 'quote'
  delete '/quotes/:id'    => 'quotes#destroy'
  put '/quotes/:id'       => 'quotes#update'
  get '/quotes/:id/edit'  => 'quotes#edit',    :as => 'edit'
  
  
  
end
