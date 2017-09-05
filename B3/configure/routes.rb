Rails.application.routes.draw do
  get 'welcome/index'
  resources:admins do 
    resources:posts,:feedbacks
  end
  resources:posts do
    resources:comments
  end
  root 'welcome#index'
end
