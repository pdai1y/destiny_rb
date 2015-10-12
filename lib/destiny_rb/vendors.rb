module Destiny
  module Vendors

    # WIP: Pull xur inventory
    # '/advisors/xur/''
    def xur(raw=false)
      raw_data = self.class.get('/Advisors/Xur/', headers: @headers).parsed_response['Response']

      if raw
        raw_data
      elsif raw_data.empty?
        return nil
      else
        vendor_hash = raw_data['data']['vendorHash']
        sale_items = {}
        # Hacky? Probs.
        raw_data['data']['saleItemCategories'].each do |category|
          items = { category['categoryTitle'] => category['saleItems'].map!{|item| {:item_hash => item['item']['itemHash'], :item_cost => item['costs'][0]['value'], :item_cost_hash => item['costs'][0]['itemHash']} } }
          sale_items.merge!(items)
        end
        sale_items
      end
    end

    def vendor(vendor_hash)
      raw_data = self.class.get("/Manifest/Vendor/#{vendor_hash}", headers: @headers).parsed_response['Response']['data']['vendor']['summary']
    end

  end
end
