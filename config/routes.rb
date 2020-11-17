Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root          'staticpages#home'
  devise_for :users
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
  get 'staticpages/about'
  get 'staticpages/help'
  get 'home/about'
  get  'help' => 'staticpages#help'
  get  'success_message' => 'applicants#success_message' 

end
