class LocationsController < ApplicationController
  

  #before_filter :authenticate_user! , :only => [:new, :create, :update, :destroy] 

  def index
    # if user enter location search near location w.r.t user location
    if params[:address].present?
      @locations = Location.near(params[:address], params[:distance], :units => :km)
      @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
        marker.lat location.latitude
        marker.lng location.longitude
        marker.infowindow render_to_string(:partial => "infowindow", :locals => { :object => location})
        marker.json({ :address => location.address.split(',').first })
      end
      respond_to do |format|
        format.html # show.html.erb
        format.js
      end
    else
      # intially the 
      @locations = Location.all
      @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.infowindow render_to_string(:partial => "infowindow", :locals => { :object => location})
      marker.json({ :address => location.address.split(',').first })
    end 
    end

  end

  def search
    @geo =  Geocoder.search(params[:address])
    respond_to do |format|
      format.json { render json: @geo }
    end 
  end

  
  def show
    @location = Location.find(params[:id])
    
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location }
    end
  end

 
  def new
    @location = current_or_guest_user.locations.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location }
    end
  end


  def edit
    @location = Location.find(params[:id])
  end

 
  def create
    #@location = Location.new(location_params)
    @location = current_or_guest_user.locations.build(location_params)
    p @location

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render json: @location, status: :created, location: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @location = Location.find(params[:id])
    @location.user_id = current_or_guest_user.id
    p @location
    respond_to do |format|
      if @location.update_attributes(location_params)

        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end

  private

  def location_params
    params.require(:location).permit(:address, :description, :latitude, :longitude)
  end

end