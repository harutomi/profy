Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
# resourceメソッドで、users_controllerのshowアクションを指定してください。
  root to: "top#index"
  resources :groups, only: [:show, :edit, :update]
end
