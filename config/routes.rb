Rails.application.routes.draw do
  get("flexible/square/:the_number", {:controller=>"calculations", :action=>"flex_square"})
  get("flexible/square_root/:the_number", {:controller=>"calculations", :action=>"flex_squarert"})
  get("flexible/payment/:interest/:year/:principle", {:controller=>"calculations", :action=>"flex_payments"})
  get("square/new", {:controller=>"calculations", :action=>"square_form"})
  get("square/results", {:controller=>"calculations", :action=>"square"})
  get("square_root/new", {:controller=>"calculations", :action=>"square_root_form"})
  get("square_root/results", {:controller=>"calculations", :action=>"square_root"})
  get("payment/new", {:controller=>"calculations", :action=>"payment_form"})
  get("payment/results", {:controller=>"calculations", :action=>"payment"})
  get("random/new", {:controller=>"calculations", :action=>"random_form"})
  get("random/results", {:controller=>"calculations", :action=>"random"})

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
