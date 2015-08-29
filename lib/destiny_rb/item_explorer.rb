module Destiny
  module ItemExplorer

    # Item Explorer Item-Type definitions
    #
    # Usage:
    #   client.types(:armor)
    #   client.enemy_race(2)
    #
    # Arguments:
    #   type: (String/Symbol)
    #
    # Returns:
    #   Either the numeric representation of a item type or a symbol of said item type.
    def types(type)
      types = {
        none: 0,
        currency: 1,
        armor: 2,
        weapon: 3,
        bounty: 4,
        completed_bounty: 5,
        bounty_reward: 6,
        message: 7,
        engram: 8,
        consumable: 9,
        exchange_material: 10,
        mission_reward: 11,
        quest_step: 12,
        quest_step_complete: 13
        }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end


    # Item Explorer Sub-Type definitions
    #
    # Usage:
    #   client.sub_type(:sidearm)
    #   client.sub_type(17)
    #
    # Arguments:
    #   type: (String/Symbol)
    #
    # Returns:
    #   Either the numeric representation of a item sub-type or a symbol of said sub-type.
    def sub_type(type)
      types = {
        none: 0,
        crucible: 1,
        vanguard: 2,
        iron_banner: 3,
        queen: 4,
        exotic: 5,
        auto_rifle: 6,
        shotgun: 7,
        machinegun: 8,
        hand_cannon: 9,
        rocket_launcher: 10,
        fusion_rifle: 11,
        sniper_rifle:12,
        pulse_rifle: 13,
        scout_rifle: 14,
        camera: 15,
        crm: 16,
        sidearm: 17
        }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end

    # Item Explorer Ordering definitions
    #
    # Usage:
    #   client.order(:rarity)
    #   client.enemy_race(3)
    #
    # Arguments:
    #   type: (String/Symbol)
    #
    # Returns:
    #   Either the numeric representation of a item ordering or a symbol of said ordering.
    def order(type)
      types = {
        none: 0,
        name: 1,
        item_type: 2,
        rarity: 3,
        item_type_name: 4,
        item_stat_hash: 5,
        minimum_required_level: 6,
        maximum_required_level: 7
        }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end

    # Item Explorer Rarity definitions
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
    def rarity(type)
      types = {
        none: 0,
        currency: 1,
        basic: 2,
        common: 3,
        rare: 4,
        superior: 5,
        exotic: 6
        }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end

    # Explorer Bucket definitions
    #
    # Usage:
    #   client.buckets(:artifact)
    #   client.buckets(1)
    #
    # Arguments:
    #   type: (String/Symbol)
    #
    # Returns:
    #   Either the numeric representation of a explorer bucket or a symbol of said bucket.
    def buckets(type)
      types = {
        none: 0,
        artifact: 1,
        materials: 2,
        consumables: 4,
        mission: 8,
        bounties: 16,
        build: 32,
        primary_weapon: 64,
        special_weapon: 128,
        heavy_weapon: 256,
        head: 512,
        arms: 1024,
        chest: 2048,
        legs: 4096,
        class_items: 8192,
        ghost: 16384,
        vehicle: 32768,
        ship: 65536,
        shader: 131072,
        emblem: 262144
        }
      if type.is_a? Numeric
          requested_type = types.key(type) || :none# Fetch type from hash, if type doesn't match return 'none'
      else type.is_a? Symbol
          requested_type = types.fetch(type, 0) # Fetch type from hash, if type doesn't match return 0 for 'none'
      end
    end

    def get_exlorer_items(options={})
      definitions = options[:definitions] || false
      character_class = character_class(options[:character_class] || 'unknown')
      types = types(options[:types] || 'none')
      sub_type = sub_type(options[:sub_type] || 'none')
      order = order(options[:order] || 'none')
      rarity = rarity(options[:rarity] || 'none')
      buckets = buckets(options[:buckets] || 'none')
      page = options[:page] || 0
      count = options[:count] || 250
      self.class.get("/Explorer/Items/?definitions=#{definitions}&count=#{count}&characterClass=#{character_class}&types=#{types}&subtype=#{sub_type}&order=#{order}&rarity=#{rarity}&buckets=#{buckets}&page=#{page}")
    end

  end
end
