module SolidusStockTransfers
  module ApiHelper
    mattr_accessor :stock_transfer_attributes
    @@stock_transfer_attributes = [:id, :number]

    mattr_accessor :transfer_item_attributes
    @@transfer_item_attributes = [:id, :expected_quantity, :received_quantity]

    mattr_accessor :transfer_item_variant_attributes
    @@transfer_item_variant_attributes = []
  end
end
