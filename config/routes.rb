Rails.application.routes.draw do
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    resources :managed_emails, :only => [:index, :edit, :update]
  end
end
