module Keyline
  class LineItem
    include Jeweler::Resource

    attributes :description, :qty, :unit, :net_total, :tax_rate, :gross_total,
      :net, :discount, :discounted_net_total, :order_number,
      :environmental_certifications

    associations :accounting_categories
  end
end