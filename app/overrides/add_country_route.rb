Deface::Override.new(
  :virtual_path  => "spree/shared/_routes",
  :insert_bottom => "script",
  :partial      => 'Spree.routes.country_search = "<%= spree.api_countries_path(:format => \'json\') %>"',
  :name          => "add_country_route_to_spree_routes_js"
  )
