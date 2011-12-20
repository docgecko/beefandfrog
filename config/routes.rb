Bef::Application.routes.draw do

  devise_for :users, :path => "/", :skip => :registrations

  resources :users, :only => :show
  
  scope "/:locale" do
    resources :about, :only => [ :index, :edit, :update ]
    resources :images, :except => [ :show ]
    resources :portraits, :except => [ :show ]
    resources :apartments, :only => [ :index, :show, :edit, :update ] do
      resources :photos, :except => [ :show ]
      resources :availability, :only => [ :index ]
      resources :bookings
    end
    resources :contact, :as => :supports, :controller => :supports, :only => [:new, :create]
  end

  match "/" => redirect("/en/about")
  
  root to: "about#index"
end
