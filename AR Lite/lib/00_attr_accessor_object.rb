class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      #take each name in names and make getter
      define_method(name) do
        instance_variable_get("@#{name}")
      end
      #take each name in names and set to value
      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end
    end
  end
end
