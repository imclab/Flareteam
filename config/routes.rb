Flareteam::Application.routes.draw do

  resources :activations do
    resources :comments
  end
  resources :organization_invitation_requests

  resources :organizations

  devise_for :users,
    controllers: { sessions: 'sessions',
                   registrations: 'registrations',
                   invitations: 'users/invitations' }
  resource :profile

  root :to => 'activations#index'
end
