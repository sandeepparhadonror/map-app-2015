class PictureController < ApplicationController
  def new
    @contex = picture_parent_data
    @picture = @contex.pictures.new
  end

  def create
    @contex = picture_parent_data
    @picture = @contex.pictures.new(picture_params)

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @contex , notice: "The Picture are save successfully"}
        format.json { render json:  @picture, status: :created, picture: @picture }
      else
        format.html { render  action: "new" }
        format.json { resnder json: @picture.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    @contex = picture_parent_data
    @picture = @contex.pictures.find(params[:id])
  end

  def update
    p request
    @contex = picture_parent_data
    @picture = @contex.pictures.find(params[:id])
    respond_to do |format|
      if @picture.update_attributes(picture_params)
        format.html { redirect_to @contex,  notice: "The Picture are sucesssfully updated" }
        format.json { head :no_content}
      else
        format.html { render action: "edit" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def picture_params
    params.require(:picture).permit!
  end

  def picture_parent_data
     p params
    if params[:user_id]
      id = params[:user_id]
      User.find(params[:user_id])
    else
      p "location"
      id = params[:location_id]
      Location.find(params[:location_id])
    end
  end

end
