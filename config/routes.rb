Rails.application.routes.draw do
  scope module: "web" do
    root "users#new"

    resources :groups, except: [:show]
    resources :tests
    resources :courses
    resources :education_programs

    resource :users, only: [:new, :create], path_names: { new: "sign_up" } do
      resource :session, only: [], path: "" do
        get :new, path: "sign_in", as: :new
        post :create, path: "sign_in"
        delete :destroy, path: "sign_out", as: :destroy
      end
    end

  end
end
