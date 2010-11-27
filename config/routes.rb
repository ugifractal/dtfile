Rails.application.routes.draw do |map|
  namespace :dtfile do
    namespace :admin do
      resources :manage_files
    end
  end
end
