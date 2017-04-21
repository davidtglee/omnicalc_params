Rails.application.routes.draw do
  get("flexible/square/:the_number", {:controller=>"calculations", :action=>"flex_square"})
  get("flexible/squarert/:the_number", {:controller=>"calculations", :action=>"flex_squarert"})
  get("flexible/payment/:interest/:year/:principle", {:controller=>"calculations", :action=>"flex_payments"})
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
