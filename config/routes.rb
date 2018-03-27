Rails.application.routes.draw do
  root 'cables#index'
  resources :cables
  resources :solboxes
  get 'sigma-nodes', to: 'cables#sigma_nodes'
  # get 'sigma-nodes', to: 'cables#sigma_nodes', defaults: {format: :json}
end
