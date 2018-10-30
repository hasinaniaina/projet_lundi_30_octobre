Rails.application.routes.draw do
  post 'gossip/updated_gossip', to: "gossip#update"
  get 'gossip/modification/(:id)', to:"gossip#modification"
  post 'gossip/add_gossip', to: "gossip#add_gossip"
  get 'gossip/all'
  root 'gossip#home'
  get 'gossip/team'
  get 'gossip/contact'
  get 'gossip/add'
  get 'gossip/suppression/(:id)', to: "gossip#supprimer"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
