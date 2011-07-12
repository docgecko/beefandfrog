Bef::Application.routes.draw do

  get "about/edit"

  resources :users, :only => :show
  
  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'sessions#failure'
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/signin' => 'sessions#new', :as => :signin
  
  scope "/:locale" do
    resources :about, :only => [ :index, :edit, :update ]
    resources :apartments, :only => [ :index, :edit, :update ]
    match '/contact' => "supports#new", :as => :contact
  end
  
  resources :supports, :only => [:new, :create]
  
  root to: "about#index"
end
