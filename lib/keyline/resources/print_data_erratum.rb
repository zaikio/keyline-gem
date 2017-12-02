module Keyline
  class PrintDataErratum
    include Resource
    include Writeable::Resource

    attributes :print_data_file_id, :severity, :page_number, :code, :message, :repeats
    writeable_attributes :severity, :page_number, :code, :message, :repeats
  end
end
