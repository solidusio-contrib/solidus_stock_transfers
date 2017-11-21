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
        config.menu_items << config.class::MenuItem.new(
          [:stock_transfers],
          'exchange',
          url: :admin_stock_transfers_path
        )
      end
    end
  end
end
