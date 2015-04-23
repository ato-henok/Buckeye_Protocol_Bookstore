class AdminController < ApplicationController
  def index
    #@books = Book.find_by_id('1')
     @books = Book.where(isbn: params[:search])
  end
end
