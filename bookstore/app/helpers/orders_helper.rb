module OrdersHelper

def addNewOrder(bk_id,by_id)
  Order.create(book_id: bk_id, buyer_id: by_id)
end 

end
