module Destiny
  # Destiny Manifest definitions
  # Pulled from sqlite file in the EN manifest
  # http://www.bungie.net/Platform/Destiny/Manifest/
  module ManifestDefinitions

    # Character Class definitions
    #
    # Usage:
    #   client.character_class(:titan)
    #   client.character_class(0)
    #
    # Arguments:
    #   type: (String/Symbol)
    #
    # Returns:
    #   Either the numeric representation of a character class or a symbol of said class.
    #
    def character_class(type)
      types = {
        titan: 0,
        hunter: 1,
        warlock: 2,
        unknown: 3
        }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end

    # Enemy Race definitions
    #
    # Usage:
    #   client.enemy_race(:vex)
    #   client.enemy_race(711470098)
    #
    # Arguments:
    #   type: (String/Symbol)
    #
    # Returns:
    #   Either the numeric representation of a enemy race or a symbol of said race.
    def enemy_race(type)
      types = {
        none: 0, # Not a real Bungie value
        fallen: 1636291695,
        vex: 711470098,
        cabal: 546070638,
        hive: 3265589059
      }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end

    # Skull (modifier) definitions
    #
    # Usage:
    #   client.skulls(:juggler)
    #   client.skulls(13)
    #
    # Arguments:
    #   type: (String/Symbol)
    #
    # Returns:
    #   Either the numeric representation of a skull or a symbol of said skull.
    def skulls(type)
      types = {
        none: 0, # Not a real Bungie value
        trickle: 1,
        grounded: 2,
        exposure: 3,
        airborne: 4,
        small_arms: 5,
        brawler: 6,
        catapult: 7,
        specialist: 8,
        arc_burn: 9,
        solar_burn: 10,
        void_burn: 11,
        angry: 12,
        juggler: 13,
        lightswitch: 19,
        melee_damage_boost: 20
      }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end

  end
end
