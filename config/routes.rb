KagyuVitamin::Application.routes.draw do
 
  get '/quotes'           => 'Quotes#index',   :as => 'quotes'
  post '/quotes'          => 'Quotes#create'
  get '/quotes/new'       => 'Quotes#new',     :as => 'new'
  get '/quotes/today'     => 'Quotes#today',   :as => 'today'
  
  get '/quotes/teacher/:id'    => 'Quotes#teacher',   :as => 'teacher'
  
  get '/quotes/:id'       => 'Quotes#show',    :as => 'quote'
  delete '/quotes/:id'    => 'Quotes#destroy'
  put '/quotes/:id'       => 'Quotes#update'
  get '/quotes/:id/edit'  => 'Quotes#edit',    :as => 'edit'
  
  
  
end
