require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :book_id => 1,
      :buyer_id => 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_book_id[name=?]", "order[book_id]"

      assert_select "input#order_buyer_id[name=?]", "order[buyer_id]"
    end
  end
end
