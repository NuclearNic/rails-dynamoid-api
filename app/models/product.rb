# Products are nested inside Customer
class Product
  # include Dynamoid::Document
  # belongs_to :customer
  # attr_reader :id, :volume
  # def initialize(options = {})
  #   @id = options[:id]
  #   @volume = options[:volume]
  # end

  def dynamoid_dump
    to_json
  end

  def self.dynamoid_load(serialized_str)
    puts serialized_str
    # parse serialized representation and return a Money instance
    # Money.new(1.23)
  end
end
