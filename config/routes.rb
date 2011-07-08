Bef::Application.routes.draw do
  
  scope "/:locale" do
    resources :about, :only => [ :index ]
    resources :apartments, :only => [ :index, :show ]
    match '/contact' => "supports#new", :as => :contact
  end
  
  resources :supports, :only => [:new, :create]
  
  match "/" => redirect("/en/about")
  
end
