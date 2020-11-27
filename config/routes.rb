Rails.application.routes.draw do
  root to: "home#index"
  get :open_modal, to: "home#open_modal"
end
