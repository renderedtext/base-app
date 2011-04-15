BaseApp::Application.routes.draw do

  devise_for :users

  get "pages/index"

  match "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users, :only => [:index, :show, :edit]

  end

  root :to => "pages#index"

end
