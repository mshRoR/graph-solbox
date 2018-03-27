class SolboxesController < ApplicationController
  def index
    @solboxes = Solbox.all
  end

  def new
    @solbox = Solbox.new
  end

  def create
    Solbox.create(solbox_params)

    redirect_to solboxes_path
  end

  private

  def solbox_params
    params.require(:solbox).permit(:customer, :battery_size, :panel_size)
  end
end
