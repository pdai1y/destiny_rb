module Destiny
  module Advisors

    # GET the days advisor report from http://www.bungie.net/platform/destiny/advisors/
    #
    # Usage:
    #   Destiny::Advisors.report
    #
    # Returns:
    #   A JSON object containing activity hashes, end times, and special events.
    #
    def daily_report
      raw_data = self.class.get('/Advisors', headers: @headers)
      parsed = raw_data.parsed_response['Response']['data']
    end

    # GET the activity information from '/manifest/activity/{activity_hash}/'
    #
    # Raw argument will return an unmodified respons from Bungie.
    #
    # Usage:
    #   client.activity('3508129769', false)
    #
    # Arguments:
    #   activity_hash: (String)
    #   raw: (Boolean)
    #
    # Returns:
    #   A JSON object containing activity information based on the activity hash supplied with:
    #     activityName: (String)
    #     activityDescription: (String)
    #     skulls: (Array)(Strings)
    #
    #   If raw = true, returns whole response back from bungie.
    #
    def activity_search(activity_hash, raw=false)
      raw_data = self.class.get("/Manifest/Activity/#{activity_hash}").parsed_response['Response']['data']['activity']
      skulls = []
      raw_data['skulls'].each do |skull|
        skulls << skull['displayName']
      end
      if raw
        raw_data
      else
        parsed_data = { activityName: raw_data['activityName'], activityDescription: raw_data['activityDescription'], skulls: skulls }
      end
    end

    # GET the weekly nightfall info from '/manifest/activity/#{activity_hash}'
    #
    # Optional boolean argument.
    #
    # Usage:
    #  client.nightfall(true)
    #
    # Arguments:
    #  raw: (boolean)
    #
    def nightfall(raw=false)
      nightfall_activity_hash = self.daily_report['nightfallActivityHash']
      activity_search(nightfall_activity_hash, raw)
    end

    # GET the weekly strike info from '/manifest/activity/#{activity_hash}'
    # Returns an array of three items, only need one for the skulls and location.
    #
    # Optional boolean argument, defaults to false from activity method to return basic information for Lita bot.
    #
    # Usage:
    #  client.weekly_strike(false)
    #
    # Arguments:
    #  raw: (boolean)
    #
    def weekly_strike(raw=false)
      heroic_strike_hashes = self.daily_report['heroicStrikeHashes']
      activity_search(heroic_strike_hashes[0], raw)
    end

    # GET the weekly prison of elders pulled info from '/advisors' endpoint
    # Without any arguments, only returns the level 32 information.
    #
    # Usage:
    #  client.arena(34)
    #
    # Arguments:
    #  level: (integer)
    #
    def arena(level=32)
      arenas = self.daily_report['arena']
      case level
       when 32
         arenas[0]
       when 34
         arenas[1]
       when 35
         arenas[2]
      end
    end

  end
end
