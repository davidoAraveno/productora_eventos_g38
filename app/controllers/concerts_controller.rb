class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
    @groups = Group.all
  end

  def create
    @concert = Concert.new(concert_params)
    @concert.save
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def concert_params
    params.require(:concert).permit(:name, :audience, :date, :group_id)
  end
end
