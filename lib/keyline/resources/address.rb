module Keyline
  class Address
    include Jeweler::Resource
    include Jeweler::Writeable::Resource

    attributes :addressable_id, :addressable_type, :addressee, :street, :number,
      :addition, :zip_code, :town, :country_code, :state_or_province, :fingerprint

    writeable_attributes :addressee, :street, :number, :addition, :zip_code, :town, :country_code, :state_or_province
  end
end
