class InNeedController < ApplicationController
  def create
  end

  def new
  end

  def list
    @in_needs = InNeed.all
  end
end
