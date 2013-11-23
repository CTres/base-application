Myapp::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                     controllers: {omniauth_callbacks: "omniauth_callbacks"},
                     :sign_out_via => [ :post, :delete ]

  root to: 'accounts#index'
end
