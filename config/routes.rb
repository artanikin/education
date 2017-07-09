Rails.application.routes.draw do
  scope module: "web" do

    root "informations#index"

    get "/", to: "informations#index", as: "home"

    resource :users, only: [:new, :create], path_names: { new: "sign_up" } do
      resource :session, only: [], path: "" do
        get :new, path: "sign_in", as: :new
        post :create, path: "sign_in"
        delete :destroy, path: "sign_out", as: :destroy
      end
    end

    namespace :admin do
      root "education_programs#index"

      resources :groups
      resources :tests
      resources :courses
      resources :education_programs
    end

    namespace :account do
      root "education_programs#index"

      resources :education_programs, only: [:index, :show]
      resources :courses, only: [:index, :show]
    end

  end
end
