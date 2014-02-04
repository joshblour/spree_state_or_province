module Spree
  Country.class_eval do  
  
    def self.state_and_zip_titles
      Country.all.inject({}) do |result, country|
        if country.state_title.present? || country.zip_title.present?
          result[country.id] = {state_title: country.state_title, zip_title: country.zip_title } 
        end
        result
      end
    end

  end
end