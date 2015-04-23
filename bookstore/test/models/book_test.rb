require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "book fields must not be empty" do
    book = Book.new
    assert book.invalid?
    assert book.errors[:title].any?
    assert book.errors[:price].any?
   end
end
