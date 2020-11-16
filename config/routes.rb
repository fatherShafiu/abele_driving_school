Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  as :user do
    get 'login', to: 'devise/sessions#new'
  end

  get 'list'  =>   'applicants#list' 
  get 'apply' =>  'applicants#new' 
  post 'applicants/new' 
  post 'applicants/create' 
  patch 'applicants/update' 
  get 'applicants/show' 
  get 'applicants/edit' 
  get 'applicants/delete' 
  get 'applicants/success_message' 
  get 'applicants/show_subjects'
  root          'staticpages#home'
  get 'staticpages/about'
  get 'staticpages/help'
  get 'home/about'
  get  'help' 'home/help'

end
