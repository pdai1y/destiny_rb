module Destiny
  module Manifest

    # GET information about a place, specifically a planet.
    #
    # Usage:
    #  destiny.place('3747705955')
    #
    # Arguments:
    #  place_hash: (String)
    #
    def place(place_hash)
      raw data = self.class.get('/Manifest/Place/#{place_hash}').parsed_response['Response']['data']['place']
      response = { place_name: raw_data['placeName'], place_desc: raw_data['placeDescription'] }
    end

    # GET information about a destination, specifically a location on a planet.
    #
    # Usage:
    #  destiny.destination('518553403')
    #
    # Arguments:
    #  destination_hash: (String)
    #
    def destination(destination_hash)
      raw_data = self.class.get('/Manifest/Destination/#{destination_hash}').parsed_response['Response']['data']
      response = { dest_name: raw_data['destinationName'], dest_desc: raw_data['destinationDescription'] }
    end
    
  end
end
