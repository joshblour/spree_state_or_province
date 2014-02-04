module Spree
  Country.class_eval do
   preference :state_name, :string, default: 'State'
   preference :zip_name, :string, default: 'Zip code'
    
  end
end