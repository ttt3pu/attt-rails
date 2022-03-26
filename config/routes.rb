Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      namespace :blog do
        get 'articles' => 'articles#index'
        get 'articles/:slug' => 'articles#show'
      end
    end
  end
end
