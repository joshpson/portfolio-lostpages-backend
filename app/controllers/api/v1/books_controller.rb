class Api::V1::BooksController < ApplicationController

  before_action :find_book, only: [:update, :show, :destroy]

  def index
    @books = Book.all
    render json: @books
  end

  def create
    @book = Book.create(book_params)
    render json: @book, status: :accepted
  end

  def update
    @book.update(book_params)
    render json: @book, status: :accepted
  end

  def show
    render json: @book
  end

  def destroy
    @book.destroy
  end

  private

  def find_book
    @book = Book.find_by(id: params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :author, :short_description, :info_link, :cover_img, :user_id, :condition, :notes)
  end

end
