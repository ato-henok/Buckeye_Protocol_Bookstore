require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :book_id => 1,
      :buyer_id => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_book_id[name=?]", "order[book_id]"

      assert_select "input#order_buyer_id[name=?]", "order[buyer_id]"
    end
  end
end
