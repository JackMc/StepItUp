Rails.application.routes.draw do

namespace :api do
    resources :battles
    resources :steps



  scope '/friends' do
    post '/add' => 'friends#add_friend'
    post '/remove' => 'friends#remove_friend'
    post '/accept' => 'friends#accept_request'
    post '/decline' => 'friends#decline_request'
    get '/' => 'friends#show'
  end

    mount_devise_token_auth_for 'User', at: 'auth'

end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
