Spree.routes.receive_stock_transfer_api = function(stockTransferNumber) {
  return Spree.pathFor('api/stock_transfers/' + stockTransferNumber + '/receive')
}

Spree.routes.create_transfer_items_api = function(stockTransferNumber) {
  return Spree.pathFor('api/stock_transfers/' + stockTransferNumber + '/transfer_items')
}

Spree.routes.update_transfer_items_api = function(stockTransferNumber, itemId) {
  return Spree.pathFor('api/stock_transfers/' + stockTransferNumber + '/transfer_items/' + itemId)
}
