Rails.application.routes.draw do
  resources :blog_ins do
    resources :comments
  end
  root 'blog_ins#index'
end
