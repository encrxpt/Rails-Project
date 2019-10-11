class BooksController < ApplicationController

  def index
    @pagy, @books = if params[:title]
                      pagy(Book.where('name LIKE ?', "%#{params[:title]}%"), items: 10)
                    else
                      pagy(Book.all, items: 10)
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def books_params
    params.require(:books).permit(:id, :title)
  end

end
