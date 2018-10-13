Rails.application.routes.draw do
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post 'auth' => 'user_token#create'
    namespace :v1 do
       resources :list do
        resources :item
       end
    end
  end 
end
