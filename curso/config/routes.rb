Rails.application.routes.draw do
  get 'home/index'

  resources :clases do
    resources :comentarios
  end

  resources :alumnos do
    resources :alumno_clases
  end

  resources :profesors do
    resources :evaluacions
  end

  resources :alumno_clases

  root 'home#index'
end
