class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    # raise
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    # raise
    cocktail = Cocktail.new(strong_params_cocktail)
    if cocktail.save
      redirect_to cocktails_path
      # redirect to show page: redirect_to cocktail_path(cocktail)
    else
      render :new
    end
  end

  private

  def strong_params_cocktail
    params.require(:cocktail).permit(:name)
  end
  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end
end
