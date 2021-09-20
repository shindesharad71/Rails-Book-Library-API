class Api::V1::BooksController < ApplicationController

  include Prometheus::Controller

  # Index renders all items from books table
  def index
    books = Book.all
    render json: books, status: 200
    CUSTOM_COUNTER_METRICS_EXAMPLE.increment
    CUSTOM_COUNTER_METRICS_WITH_LABEL_EXAMPLE.increment(labels: {service: 'book_list'})
    CUSTOM_GAUGE_METRICS_WITH_LABEL_EXAMPLE.set(21.534, labels: { room: 'kitchen' })
  end

  # Create action will create new book record with given data
  def create
    book = Book.new(
      name: prod_params[:name],
      author: prod_params[:author],
      description: prod_params[:description],
      release_date: prod_params[:release_date]
    )

    if book.save
      AddBookWorker.perform_async(prod_params[:name], prod_params[:author])
      render json: book, status: 200
    else
      render json: {error: "Error creating new book record"}
    end
  end

  # Show method will look up book by id
  def show
    book = Book.find_by(id: params[:id])

    if book
      render json: book, status: 200
    else
      render json: {error: "Book not found"}
    end
  end


  # This is private method only available to this controller
  private
    def prod_params
      params.require(:book).permit([
        :name,
        :author,
        :description,
        :release_date
      ])
    end
end
