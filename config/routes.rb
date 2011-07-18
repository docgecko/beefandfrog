Bef::Application.routes.draw do

  devise_for :users, :path => "/", :skip => :registrations

  resources :users, :only => :show
  
  scope "/:locale" do
    resources :about, :only => [ :index, :edit, :update ]
    resources :apartments, :only => [ :index, :show, :edit, :update ] do
      resources :photos
      resources :availability, :only => [ :index ]
      resources :bookings
    end
    resources :contact, :as => :supports, :controller => :supports, :only => [:new, :create]
  end
  
  resources :supports, :only => [:new, :create]
    
  match "/" => redirect("/en/about")
  
  root to: "about#index"
end
