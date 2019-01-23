module Keyline
  class Shipment
    include Jeweler::Resource
    include Jeweler::Writeable::Resource

    attributes :reference, :carrier_id, :delivery_contact_phone, :delivery_contact_email, :pick_up_at
    writeable_attributes :carrier_id, :delivery_contact_phone, :delivery_contact_email, :pick_up_at

    singleton_associations :address
  end
end
