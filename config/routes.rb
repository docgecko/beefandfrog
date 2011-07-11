Bef::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
    get 'sign_in', :to => 'users/sessions#new', :as => :new_user_session
    get 'sign_out', :to => 'users/sessions#destroy', :as => :destroy_user_session
  end

  scope "/:locale" do
    resources :about, :only => [ :index ]
    resources :apartments, :only => [ :index, :show ]
    match '/contact' => "supports#new", :as => :contact
  end
  
  resources :supports, :only => [:new, :create]
  
  root to: "about#index"
end
