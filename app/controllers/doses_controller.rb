class DosesController < ApplicationController
  def create
    @cocktail = set_cocktail
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @ingredient = Ingredient.new
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.select(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.select(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
