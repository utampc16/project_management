Rails.application.routes.draw do
  
  get 'project_issues/index'

  get 'home1/index'

  get 'meetings/index'

  get 'home/index'

   root 'welcome#index'
   resources :technologies
   resources :user_projects
   resources :tasks
  devise_for :users
	resources :projects
	resources :assign_tasks
	resources :meetings
	resources :timesheets

	match '/assign_tasks/complete' => 'assign_tasks#complete', as: 'complete_assign_task', via: :post


	resources :projects do
		resources :tasks
	end


	resources :users do
		resources :projects do
			resources :assign_tasks
		end
	end
  
  resources :projects do
  	resources :project_issues
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
