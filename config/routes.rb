BaseApp::Application.routes.draw do

  devise_for :users

  get "pages/index"

  root :to => "pages#index"

end
