KagyuVitamin::Application.routes.draw do
 
  root :to => 'quotes#today'
 
  get '/quotes'           => 'quotes#index',    :as => 'quotes'
  post '/quotes'          => 'quotes#create'
  get '/new'              => 'quotes#new',      :as => 'new'
  get '/today'            => 'quotes#today',    :as => 'today'
  get '/widget_osx'       => 'quotes#widget_osx'
  get '/quotes/verify'    => 'quotes#verify',   :as => 'verify'
  get '/confirmation'     => 'quotes#confirmation', :as => 'confirmation'
  
  get '/quotes/:id'       => 'quotes#show',     :as => 'quote'
  get '/quotes/:id/:edit' => 'quotes#edit',     :as => 'edit'
  delete '/quotes/:id'    => 'quotes#destroy'
  put '/quotes/:id'       => 'quotes#update'
  
end
