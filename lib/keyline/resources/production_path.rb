module Keyline
  class ProductionPath
    include Jeweler::Resource
    include Jeweler::Writeable::Resource

    attributes :state, :circulation, :selected_for_production,
      :show_in_offer, :production_costs, :costs_per_unit, :costs_per_thousand, :total,
      :margin, :discount, :discounted_total, :outsourced, :keep_total,
      :contribution_margin_for_inhouse_costs, :contribution_margin_for_external_costs, :margin_stepping,
      :material_costs, :shipping_costs, :weight_calculation_mode, :product_weight

    writeable_attributes :selected_for_production, :show_in_offer, :total, :margin, :discount, :outsourced,
      :keep_total, :margin_stepping, :weight_calculation_mode, :product_weight

    associations :circulations, :production_flow_modifications, :tasks

    def conceptualize!
      @client.send(:send_request, :patch, self.path_for_update + '/conceptualize')
    end
  end
end
