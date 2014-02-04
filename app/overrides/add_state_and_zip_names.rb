Deface::Override.new(
  :virtual_path  => "spree/address/_form",
  :insert_before=> "div.inner",
  :text      => '<script>
    if (Spree === undefined) {
      var Spree = {}
    }
    if (Spree.state_and_zip_titles == undefined) {
      Spree.state_and_zip_titles = {}
    }
    Spree.state_and_zip_titles = <%= raw Spree::Country.state_and_zip_titles.to_json %>
    Spree.default_titles = <%= raw Spree::Country.default_titles.to_json %>
  </script>',
  :name          => "add_country_state_and_zip_titles_to_address_form"
  )
  
  
Deface::Override.new(
  :virtual_path  => "spree/admin/countries/_form",
  :insert_after => "[data-hook='admin_country_form_fields']",
  :partial      => 'spree/countries/title_fields',
  :name          => "add_country_state_and_zip_titles_countries_form"
  )

