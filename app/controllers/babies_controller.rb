# Created by "rails generate model babies"
class BabiesController < ApplicationController
   # Index action is the default web-page
   # In Rails, it typically shows all of the objects of that type
  def index
		@babies = Baby.all
		p "-------> #{@babies}" 
  end

  # Handles a request to edit a baby.
  # Finds the baby in the database based on its ID, then 
  # assigns it to the "@baby" variable.
  def edit
    @baby = Baby.find(params[:id])
  end

  def create
    p "---------> create() in BabiesController"

    @baby = Baby.new(baby_params)  # 'baby_param's contains the data just typed in
    @baby.save				   # Saving the new baby

    redirect_to babies_path
  end

  def new
    p "---------> new() in BabiesController"
    # need code here!
  end

  # This method will be called after the user hits the 'Save' button on the
  # edit baby form.
  # It will update a Baby record in the database.
  def update
    @baby = Baby.find(params[:id])  # Get the old Baby object
    @baby.update(baby_params)       # Change the Baby based on the new input from the user
								    # and save it to the DB.	
    redirect_to babies_path	    # Return the list of babies
  end

  def show
    @baby = Baby.find(params[:id])
  end

  ################## PRIVATE METHODS ####################
  private
    # Defines what DB fields users are allowed/permitted to change. 
    def baby_params
      params.require(:baby).permit(:name, :gender, :image)
    end

end

