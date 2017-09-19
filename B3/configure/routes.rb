Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources:guests do
    resources:comments
  end
  resources:posts do
    resources:comments
  end
  resources:feedbacks
  devise_for :users
end
