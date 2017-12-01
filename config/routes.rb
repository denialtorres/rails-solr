Rails.application.routes.draw do
   get '/search_players', to: 'player_search#new_search', as: 'new_search'
   post '/search_players', to:'player_search#search_players', as: 'search_players'
end
