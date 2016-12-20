Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'messages#message_of_the_day'
  get '/mensagem-do-dia', to: 'messages#message_of_the_day'
end
