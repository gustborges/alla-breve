Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'posts#index'
  resources :posts
  resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
