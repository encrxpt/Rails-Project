class GenresController < ApplicationController
  def index
    @pagy, @genre = if params[:name]
                      pagy(Genre.where('name LIKE ?', "%#{params[:name]}%"), items: 10)
                    else
                      pagy(Genre.all, items: 10)
    end
  end

  def show
    @genres = Genre.find(params[:id])
  end

  private

  def genre_params
    params.require(:genres).permit(:id, :name)
  end
end
