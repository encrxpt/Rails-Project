class PublishersController < ApplicationController
  def index
    @pagy, @publisher = if params[:name]
                      pagy(Publisher.where('name LIKE ?', "%#{params[:name]}%"), items: 10)
                    else
                      pagy(Publisher.all, items: 10)
    end
  end

  def show
    @publishers = Publisher.find(params[:id])
  end

  private

  def publisher_params
    params.require(:publishers).permit(:id, :name)
  end
end
