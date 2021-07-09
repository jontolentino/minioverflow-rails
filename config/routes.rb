Rails.application.routes.draw do
  resources :posts
  # resources :questions
  root to: 'questions#index'
  get '/questions' => 'questions#index', as: 'question_index'
  get '/questions/html' => 'questions#html', as: 'question_html'
  get '/questions/css' => 'questions#css', as: 'question_css'
  get '/questions/javascript' => 'questions#javascript', as: 'question_javascript'
  get '/questions/ruby' => 'questions#ruby', as: 'question_ruby'
  get '/questions/new' => 'questions#new', as: 'question_new'
  post '/questions/new' => 'questions#new_create', as: 'question_post_q'
  get '/questions/p/:id' => 'questions#show', as: 'question_show'
  get '/questions/p/:id/edit' => 'questions#edit', as: 'questions_editing'
  patch '/questions/p/:id' => 'questions#update', as: 'question_update'
  delete 'questions/p/:id' => 'questions#delete', as: 'question_delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
