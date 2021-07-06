Rails.application.routes.draw do
  resources :catalog_reports
  devise_for :users, controllers: 
    { sessions: 'users/sessions',
      registrations: 'users/registrations'}
  root to: 'welcome#index'
  get 'welcome/index'
  get 'welcome/index/:id', to: 'welcome#counter'
  get 'users', to: 'users#index'
  resources :myusers, controller: 'users'
  resources :employments
  resources :departments
  resources :journal_doc_reports
  resources :personels
  resources :journal_doc_analytics
  resources :reference_analytics
  resources :acquisition_reports
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
