GrayLadyApp::Application.routes.draw do
  root to: "scraper#index"
  get '/get_hrefs' => 'scraper#get_hrefs'
  get '/get_images' => 'scraper#get_images'
end
