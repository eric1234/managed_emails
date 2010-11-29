Rails.application.routes.draw do
  scope ManagedEmails.route_scope do
    resources :managed_emails, :only => [:index, :edit, :update]
  end
end
