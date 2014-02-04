module Spree
  Country.class_eval do  
  
    def self.state_and_zip_titles
      Country.all.inject({}) do |result, country|
        if country.state_title.present? || country.zip_title.present?
          result[country.id] = {state_title: Spree.t(country.state_title), zip_title: Spree.t(country.zip_title) } 
        end
        result
      end
    end
    
    def self.default_titles
      {state_title: Spree.t(:state), zip_title: Spree.t(:zip_code)}
    end

  end
end