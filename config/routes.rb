Rails.application.routes.draw do

  # Rota inicial
  root 'projects#index'

  # Determina que a Task está relacionado ao Projeto
  resources :projects do
    resources :tasks
  end

end
