Spree.ready(function($) {
  var getCountryId, updateStateAndZipName, setStateName, setZipName;
  
  if (Spree.state_and_zip_titles != undefined) {
  
    getCountryId = function(region) {
      return $('#' + region + 'country select').val();
    };
    
    
    updateStateAndZipName = function(region) {
      var countryId;
      var country_hash
      countryId = parseInt(getCountryId(region));
      country_hash = Spree.state_and_zip_titles[countryId];
      default_titles = Spree.default_titles;
    
      if (country_hash != null) {
          setStateName(country_hash.state_title, region)
          setZipName(country_hash.zip_title, region)
        } else {
          setStateName(default_titles.state_title, region)
          setZipName(default_titles.zip_title, region)
        }
    };

    
    setStateName = function(new_name, region) {
      $('#' + region + 'state label').html(new_name)
    };
    
    setZipName = function(new_name, region) {
      $('#' + region + 'zipcode label').html(new_name)
    };

    ($('#bcountry select')).change(function() {
      return updateStateAndZipName('b');
    });
    
    ($('#scountry select')).change(function() {
      return updateStateAndZipName('s');
    });
    

    updateStateAndZipName('b');

  }
});
