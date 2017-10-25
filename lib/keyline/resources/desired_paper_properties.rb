module Keyline
  class DesiredPaperProperties
    include SingletonResource
    include Writeable::Resource
    extend  Resource::ClassMethods
    extend  Writeable::Resource::ClassMethods

    attributes :component_id, :name, :dimensions, :grain, :color, :kind, :grammage, :environmental_certification
    writeable_attributes :name, :dimensions, :grain, :color, :kind, :grammage, :environmental_certification
  end
end
