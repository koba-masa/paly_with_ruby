module NestedData
  class Prefecture
    attr_accessor :name, :city_name, :deleted

    def full_address
      "#{name}#{city_name}"
    end
  end
end