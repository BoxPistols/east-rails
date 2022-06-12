Rails.application.routes.draw do
  # 新規データ作成、保存
  get 'lists/new'
  post 'lists' => 'lists#create'
  # 投稿一覧
  get 'lists' => 'lists#index'
  

  get 'lists/show'
  get 'lists/edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homes#index"
  get '/top' => 'homes#top'
end
