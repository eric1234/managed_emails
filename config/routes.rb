Rails.application.routes.draw do
  resources :managed_emails, :only => [:index, :edit, :update]
end
