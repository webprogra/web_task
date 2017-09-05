Rails.application.routes.draw do
  get 'welcome/index'
  namespace:admin do
    resources:posts,only:[:new,:create,:edit,:update,:destroy]
    resources:comments,only:[:destroy]
  end
  resources :admins do
    resources :posts
    resources :feedbacks
  end
  resources :posts do
    resources :comments
  end
  resources :admins do
    post 'login', on: :member
  end
  root 'welcome#index'
end
