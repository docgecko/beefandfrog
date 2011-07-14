Bef::Application.routes.draw do

  get "about/edit"

  resources :users, :only => :show
  
  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'sessions#failure'
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/signin' => 'sessions#new', :as => :signin
  
  scope "/:locale" do
    resources :about, :only => [ :index, :edit, :update ]
    resources :apartments, :only => [ :index, :show, :edit, :update ] do
      resources :photos
    end
    resources :contact, :as => :supports, :controller => :supports, :only => [:new, :create]
  end
  
  resources :supports, :only => [:new, :create]
    
  match "/" => redirect("/en/about")
  
  root to: "about#index"
end
