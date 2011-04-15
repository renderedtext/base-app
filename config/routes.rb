BaseApp::Application.routes.draw do

  devise_for :users

  get "pages/index"

  match "/admin" => "admin/base#index", :as => "admin"

  root :to => "pages#index"

end
