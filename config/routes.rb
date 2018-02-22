Rails.application.routes.draw do
   root 'welcome#index'
   resources :technologies
   resources :user_projects
   resources :tasks
  devise_for :users
	resources :projects
	resources :assign_tasks


	resources :users do
		resources :projects do
			resources :assign_tasks
		end
	end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
