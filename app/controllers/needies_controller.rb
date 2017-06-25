class NeediesController < ApplicationController
  def new
  end

  def create
    @needy = Needy.new(needy_params)
    @needy.save
    redirect_to new_needies_path
  end

  private
   def needy_params
     params.require(:needy).permit(:name, :economic_range, :dependent, :necessity)
   end
end
