Rails.application.routes.draw do
  namespace :api do
      get '/contact_url' => 'contacts#first_contact'
  end  
end
