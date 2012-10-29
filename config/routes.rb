KagyuVitamin::Application.routes.draw do
 
  get '/quotes'           => 'Quotes#index',   :as => 'quotes'
  get '/quotes/new'       => 'Quotes#new',     :as => 'new'
  get '/quotes/today'     => 'Quotes#today',   :as => 'today'
  get '/quotes/:id/edit'  => 'Quotes#edit',    :as => 'edit'
  
  post '/quotes'          => 'Quotes#create'
  put '/quotes/:id'       => 'Quotes#update',  :as => 'update'
  delete '/quotes/:id'    => 'Quotes#destroy', :as => 'destroy'
  
end
