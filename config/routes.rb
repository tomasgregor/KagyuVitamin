KagyuVitamin::Application.routes.draw do
 
  root :to => 'quotes#today'
 
  get '/quotes'           => 'quotes#index',    :as => 'quotes'
  post '/quotes'          => 'quotes#create'
  get '/new'              => 'quotes#new',      :as => 'new'
  get '/today'            => 'quotes#today',    :as => 'today'
  get '/quotes/verify'    => 'quotes#verify',   :as => 'verify'
  get '/quotes/confirmation' => 'quotes#confirmation', :as => 'confirmation'
  
  get '/quotes/teacher/:id'    => 'quotes#teacher',   :as => 'teacher'
  
  get '/quotes/:id/:edit'  => 'quotes#edit',     :as => 'edit'
  get '/quotes/:id'       => 'quotes#show',     :as => 'quote'
  delete '/quotes/:id'    => 'quotes#destroy'
  put '/quotes/:id'       => 'quotes#update'
  
  
  
  
end
