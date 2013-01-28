AppMedica::Application.routes.draw do

  get "profiles/dashboard"

  devise_for :users

  get "inicio/index", as: "inicio"
  root to: 'inicio#index'


  match '/profiles/dashboard' => 'profiles#dashboard', :as => :user_root

  devise_for :users, :path_names => {:sign_in => "login", :sign_out => "logout"}

  resources :profiles, :only => [:dashboard]

  namespace :admin do
    root to: "application#index"

    resources :marcas
  end

end


# Exemplos de rotas
# http://origami.co.uk/blog/2010/02/rails-3-routing-examples
