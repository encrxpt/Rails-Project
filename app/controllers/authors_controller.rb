class AuthorsController < ApplicationController
  def index
    @pagy, @authors = if params[:name]
                      pagy(Author.where('name LIKE ?', "%#{params[:name]}%"), items: 10)
                    else
                      pagy(Author.all, items: 10)
    end
  end

  def show
    @authors = Author.find(params[:id])
  end

  private

  def author_params
    params.require(:authors).permit(:id, :name)
  end

end
