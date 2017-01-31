Rails.application.routes.draw do

root 'pages#welcome'
get '/welcome' => 'pages#welcome', as: 'hey'
get '/about' => 'pages#about'
get '/contest' => 'pages#contest'
get '/kitten/:size' => 'pages#kitten', as: 'kitten'
get '/kittens/:size' => 'pages#kittens', as: 'kittens'
get '/secrets/:magic_word' => 'pages#secrets'

end
