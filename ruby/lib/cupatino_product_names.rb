require "cupatino_product_names/version"
require "json"

class String
  def to_product_name
    names = open("data/names.json") do |f|
      JSON.load(f)
    end
    names[self]
  end
end

