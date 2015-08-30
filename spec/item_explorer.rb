require "spec_helper"

describe Destiny::ItemExplorer do
  let(:api_key) { 'd319ebf361e9f4f28e65fa05ce1cf8d6' }
  let(:client) { DestinyAPI::Base.new(:api_key) }

  describe "#character_class" do
    context "client requests character_class integer from key" do
      it "expects a request for titan to return 0" do
        titan = client.character_class(:titan)
        expect(titan).to eq(0)
      end

      it "expects a request for hunter to return 1" do
        hunter = client.character_class(:hunter)
        expect(hunter).to eq(1)
      end

      it "expects a request for warlock to return 2" do
        warlock = client.character_class(:warlock)
        expect(warlock).to eq(2)
      end

      it "expects a request for unknown to return 3" do
        unknown = client.character_class(:unknown)
        expect(unknown).to eq(3)
      end
    end
  end

  describe "#types" do
    context "client requests types integer from key" do
      it "expects an item type of none to return 0" do
        none = client.types(:none)
        expect(none).to eq(0)
      end

      it "expects an item type of currency to return 1" do
        currency = client.types(:currency)
        expect(currency).to eq(1)
      end

      it "expects an item type of armor to return 2" do
        armor = client.types(:armor)
      expect(armor).to eq(2)
      end

      it "expects an item type of weapon to return 3" do
        weapon = client.types(:weapon)
        expect(weapon).to eq(3)
      end

      it "expects an item type of bounty to return 4" do
        bounty = client.types(:bounty)
        expect(bounty).to eq(4)
      end

      it "expects an item type of completed_bounty to return 5" do
        completed_bounty = client.types(:completed_bounty)
        expect(completed_bounty).to eq(5)
      end

      it "expects an item type of bounty_reward to return 6" do
        bounty_reward = client.types(:bounty_reward)
        expect(bounty_reward).to eq(6)
      end

      it "expects an item type of message to return 7" do
        message = client.types(:message)
      expect(message).to eq(7)
      end

      it "expects an item type of engram to return 8" do
        engram = client.types(:engram)
        expect(engram).to eq(8)
      end

      it "expects an item type of consumable to return 9" do
        consumable = client.types(:consumable)
        expect(consumable).to eq(9)
      end

      it "expects an item type of exchange_material to return 10" do
        exchange_material = client.types(:exchange_material)
        expect(exchange_material).to eq(10)
      end

      it "expects an item type of mission_reward to return 11" do
        mission_reward = client.types(:mission_reward)
        expect(mission_reward).to eq(11)
      end

      it "expects an item type of quest_step to return 12" do
        quest_step = client.types(:quest_step)
        expect(quest_step).to eq(12)
      end

      it "expects an item type of quest_step_complete to return 13" do
        quest_step_complete = client.types(:quest_step_complete)
        expect(quest_step_complete).to eq(13)
      end
    end
  end

  describe "#sub_type" do
    context "client requests sub_type integer from key" do
      it "expects a sub_type of none to return 0" do
        none = client.sub_type(:none)
        expect(none).to eq(0)
      end

      it "expects a sub_type of crucible to return 1" do
        crucible = client.sub_type(:crucible)
        expect(crucible).to eq(1)
      end

      it "expects a sub_type of vanguard to return 2" do
        vanguard = client.sub_type(:vanguard)
        expect(vanguard).to eq(2)
      end

      it "expects a sub_type of iron_banner to return 3" do
        iron_banner = client.sub_type(:iron_banner)
        expect(iron_banner).to eq(3)
      end

      it "expects a sub_type of queen to return 4" do
        queen = client.sub_type(:queen)
        expect(queen).to eq(4)
      end

      it "expects a sub_type of exotic to return 5" do
        exotic = client.sub_type(:exotic)
        expect(exotic).to eq(5)
      end

      it "expects a sub_type of auto_rifle to return 6" do
        auto_rifle = client.sub_type(:auto_rifle)
        expect(auto_rifle).to eq(6)
      end

      it "expects a sub_type of shotgun to return 7" do
        shotgun = client.sub_type(:shotgun)
        expect(shotgun).to eq(7)
      end

      it "expects a sub_type of machinegun to return 8" do
        machinegun = client.sub_type(:machinegun)
        expect(machinegun).to eq(8)
      end

      it "expects a sub_type of hand_cannon to return 9" do
        hand_cannon = client.sub_type(:hand_cannon)
        expect(hand_cannon).to eq(9)
      end

      it "expects a sub_type of rocket_launcher to return 10" do
        rocket_launcher = client.sub_type(:rocket_launcher)
        expect(rocket_launcher).to eq(10)
      end

      it "expects a sub_type of fusion_rifle to return 11" do
        fusion_rifle = client.sub_type(:fusion_rifle)
        expect(fusion_rifle).to eq(11)
      end

      it "expects a sub_type of sniper_rifle to return 12" do
        sniper_rifle = client.sub_type(:sniper_rifle)
        expect(sniper_rifle).to eq(12)
      end

      it "expects a sub_type of pulse_rifle to return 13" do
        pulse_rifle = client.sub_type(:pulse_rifle)
        expect(pulse_rifle).to eq(13)
      end

      it "expects a sub_type of scout_rifle to return 14" do
        scout_rifle = client.sub_type(:scout_rifle)
        expect(scout_rifle).to eq(14)
      end

      it "expects a sub_type of camera to return 15" do
        camera = client.sub_type(:camera)
        expect(camera).to eq(15)
      end

      it "expects a sub_type of crm to return 16" do
        crm = client.sub_type(:crm)
        expect(crm).to eq(16)
      end

      it "expects a sub_type of sidearm to return 17" do
        sidearm = client.sub_type(:sidearm)
        expect(sidearm).to eq(17)
      end
    end
  end

  describe "#order" do
    context "client requests order integer from key" do
      it "expects a order type of none to return 0" do
        none = client.order(:none)
        expect(none).to eq(0)
      end

      it "expects a order type of name to return 1" do
        name = client.order(:name)
        expect(name).to eq(1)
      end

      it "expects a order type of item_type to return 2" do
        item_type = client.order(:item_type)
        expect(item_type).to eq(2)
      end

      it "expects a order type of rarity to return 3" do
        rarity = client.order(:rarity)
        expect(rarity).to eq(3)
      end

      it "expects a order type of item_type_name to return 4" do
        item_type_name = client.order(:item_type_name)
        expect(item_type_name).to eq(4)
      end

      it "expects a order type of item_stat_hash to return 5" do
        item_stat_hash = client.order(:item_stat_hash)
        expect(item_stat_hash).to eq(5)
      end

      it "expects a order type of minimum_required_level to return 6" do
        minimum_required_level = client.order(:minimum_required_level)
        expect(minimum_required_level).to eq(6)
      end

      it "expects a order type of maximum_required_level to return 7" do
        maximum_required_level = client.order(:maximum_required_level)
        expect(maximum_required_level).to eq(7)
      end
    end
  end

  describe "#rarity" do
    context "client requests rarity integer from key" do
      it "expects a rarity type of none to return 0" do
        none = client.rarity(:none)
        expect(none).to eq(0)
      end

      it "expects a rarity type of currency to return 1" do
        currency = client.rarity(:currency)
        expect(currency).to eq(1)
      end

      it "expects a rarity type of basic to return 2" do
        basic = client.rarity(:basic)
        expect(basic).to eq(2)
      end

      it "expects a rarity type of common to return 3" do
        common = client.rarity(:common)
        expect(common).to eq(3)
      end

      it "expects a rarity type of rare to return 4" do
        rare = client.rarity(:rare)
        expect(rare).to eq(4)
      end

      it "expects a rarity type of superior to return 5" do
        superior = client.rarity(:superior)
        expect(superior).to eq(5)
      end

      it "expects a rarity type of exotic to return 6" do
        exotic = client.rarity(:exotic)
        expect(exotic).to eq(6)
      end
    end
  end

  describe "#buckets" do
    context "client requests bucket integer from key" do
      it "expects a bucket type of none to return 0" do
        none = client.buckets(:none)
        expect(none).to eq(0)
      end

      it "expects a bucket type of artifact to return 1" do
        artifact = client.buckets(:artifact)
        expect(artifact).to eq(1)
      end

      it "expects a bucket type of materials to return 2" do
        materials = client.buckets(:materials)
        expect(materials).to eq(2)
      end

      it "expects a bucket type of consumables to return 4" do
        consumables = client.buckets(:consumables)
        expect(consumables).to eq(4)
      end

      it "expects a bucket type of mission to return 8" do
        mission = client.buckets(:mission)
        expect(mission).to eq(8)
      end

      it "expects a bucket type of bounties to return 16" do
        bounties = client.buckets(:bounties)
        expect(bounties).to eq(16)
      end

      it "expects a bucket type of build to return 32" do
        build = client.buckets(:build)
        expect(build).to eq(32)
      end

      it "expects a bucket type of primary_weapon to return 64" do
        primary_weapon = client.buckets(:primary_weapon)
        expect(primary_weapon).to eq(64)
      end

      it "expects a bucket type of special_weapon to return 128" do
        special_weapon = client.buckets(:special_weapon)
        expect(special_weapon).to eq(128)
      end

      it "expects a bucket type of heavy_weapon to return 256" do
        heavy_weapon = client.buckets(:heavy_weapon)
        expect(heavy_weapon).to eq(256)
      end

      it "expects a bucket type of head to return 512" do
        head = client.buckets(:head)
        expect(head).to eq(512)
      end

      it "expects a bucket type of arms to return 1024" do
        arms = client.buckets(:arms)
        expect(arms).to eq(1024)
      end

      it "expects a bucket type of chest to return 2048" do
        chest = client.buckets(:chest)
        expect(chest).to eq(2048)
      end

      it "expects a bucket type of legs to return 4096" do
        legs = client.buckets(:legs)
        expect(legs).to eq(4096)
      end

      it "expects a bucket type of class_items to return 8192" do
        class_items = client.buckets(:class_items)
        expect(class_items).to eq(8192)
      end

      it "expects a bucket type of ghost to return 16384" do
        ghost = client.buckets(:ghost)
        expect(ghost).to eq(16384)
      end

      it "expects a bucket type of vehicle to return 32768" do
        vehicle = client.buckets(:vehicle)
        expect(vehicle).to eq(32768)
      end

      it "expects a bucket type of ship to return 65536" do
        ship = client.buckets(:ship)
        expect(ship).to eq(65536)
      end

      it "expects a bucket type of shader to return 131072" do
        shader = client.buckets(:shader)
        expect(shader).to eq(131072)
      end

      it "expects a bucket type of emblem to return 262144" do
        emblem = client.buckets(:emblem)
        expect(emblem).to eq(262144)
      end
    end
  end

end
