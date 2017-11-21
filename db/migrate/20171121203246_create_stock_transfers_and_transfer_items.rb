class CreateStockTransfersAndTransferItems < ActiveRecord::Migration[4.2]
  def up
    return if table_exists?(:spree_stock_transfers)

    create_table "spree_stock_transfers" do |t|
      t.string "description"
      t.integer "source_location_id"
      t.integer "destination_location_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string "number"
      t.datetime "shipped_at"
      t.datetime "closed_at"
      t.string "tracking_number"
      t.integer "created_by_id"
      t.integer "closed_by_id"
      t.datetime "finalized_at"
      t.integer "finalized_by_id"
      t.datetime "deleted_at"
      t.index ["closed_at"], name: "index_spree_stock_transfers_on_closed_at"
      t.index ["destination_location_id"], name: "index_spree_stock_transfers_on_destination_location_id"
      t.index ["finalized_at"], name: "index_spree_stock_transfers_on_finalized_at"
      t.index ["number"], name: "index_spree_stock_transfers_on_number"
      t.index ["shipped_at"], name: "index_spree_stock_transfers_on_shipped_at"
      t.index ["source_location_id"], name: "index_spree_stock_transfers_on_source_location_id"
    end

    create_table "spree_transfer_items" do |t|
      t.integer "variant_id", null: false
      t.integer "stock_transfer_id", null: false
      t.integer "expected_quantity", default: 0, null: false
      t.integer "received_quantity", default: 0, null: false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "deleted_at"
      t.index ["stock_transfer_id"], name: "index_spree_transfer_items_on_stock_transfer_id"
      t.index ["variant_id"], name: "index_spree_transfer_items_on_variant_id"
    end
  end

  def down
    drop_table :spree_stock_transfers
  end
end
