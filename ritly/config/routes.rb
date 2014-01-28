Ritly::Application.routes.draw do

  # get "sessions/new"
  # get "sessions/destroy"
  # get "users/new"
  # get "users/show"
  # get "users/create"
	resource :users, :rits, :sessions

  root to: 'ritly#index'

  get 'ritly', to: 'ritly#index', as: :index

  post 'ritly/create', to: 'ritly#create'

  get 'ritly/show/:url', to: 'ritly#show', as: :show

  patch 'ritly/update/:url', to: 'ritly#update'

  get 'ritly/go/:url', to: 'ritly#go', as: :go

  delete 'ritly/delete/:id', to: 'ritly#delete', as: :delete

end


#   	 users POST   /users(.:format)             users#create
#     new_users GET    /users/new(.:format)         users#new
#    edit_users GET    /users/edit(.:format)        users#edit
#               GET    /users(.:format)             users#show
#               PATCH  /users(.:format)             users#update
#               PUT    /users(.:format)             users#update
#               DELETE /users(.:format)             users#destroy
#          rits POST   /rits(.:format)              rits#create
#      new_rits GET    /rits/new(.:format)          rits#new
#     edit_rits GET    /rits/edit(.:format)         rits#edit
#               GET    /rits(.:format)              rits#show
#               PATCH  /rits(.:format)              rits#update
#               PUT    /rits(.:format)              rits#update
#               DELETE /rits(.:format)              rits#destroy
#      sessions POST   /sessions(.:format)          sessions#create
#  new_sessions GET    /sessions/new(.:format)      sessions#new
# edit_sessions GET    /sessions/edit(.:format)     sessions#edit
#               GET    /sessions(.:format)          sessions#show
#               PATCH  /sessions(.:format)          sessions#update
#               PUT    /sessions(.:format)          sessions#update
#               DELETE /sessions(.:format)          sessions#destroy
#          root GET    /                            ritly#index
#         index GET    /ritly(.:format)             ritly#index
#  ritly_create POST   /ritly/create(.:format)      ritly#create
#          show GET    /ritly/show/:url(.:format)   ritly#show
#               PATCH  /ritly/update/:url(.:format) ritly#update
#            go GET    /ritly/go/:url(.:format)     ritly#go
#        delete DELETE /ritly/delete/:id(.:format)  ritly#delete
