require 'solidus_backend'

module SolidusStockTransfers
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'solidus_stock_transfers'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "add_stock_transfer_menu_item" do
      Spree::Backend::Config.configure do |config|
        # Insert after "stock", if that exists
        idx = (config.menu_items.index { |item| item.label == :stock } || -2) + 1
        config.menu_items.insert idx, config.class::MenuItem.new(
          [:stock_transfers],
          'exchange',
          url: :admin_stock_transfers_path,
          condition: -> { can?(:admin, :stock_transfers) }
        )
      end
    end
  end
end
