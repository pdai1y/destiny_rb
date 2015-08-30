module Destiny
  module Manifest

    def search_destiny_player(player_name, platform_type)
      raw_data = self.class.get("/SearchDestinyPlayer/#{platform_type}/#{player_name}/").parsed_response['Response']['membershipId']
    end

    def get_destiny_account(player_name, platform_type)
      member_id = self.search_destiny_player(player_name, platform_type)
      raw_data = self.class.get("/#{platform_type}/Account/#{member_id}/").parsed_response['Response']['data']
    end

    def get_manifest_item(type_id, item_id)
      raw_data = self.class.get("/Manifest/#{type_id}/#{item_id}").parsed_response['Response']['data']['inventoryItem']
    end

    # GET information about a place, specifically a planet.
    #
    # Usage:
    #  client.place('3747705955')
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
    #  client.destination('518553403')
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
