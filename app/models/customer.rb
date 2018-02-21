# This defines the structure of the data in DynamoDB
class Customer
  include Dynamoid::Document

  has_many :products

  # Definition of table structure
  table name: :customers,
        key: :cid,
        read_capacity: 5,
        write_capacity: 5

  # Fields
  field :email
  field :first_name
  field :last_name
  field :products, :raw
end
