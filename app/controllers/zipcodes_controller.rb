class ZipcodesController < ApplicationController

  def new
    puts 'test'
  end

  def show
    @zipcodes = Zipcode.find(params[:id])
  end

  def create
    @zipcodes = Zipcode.new(zipcode_params)

    @zipcodes.save
    redirect_to @zipcodes
  end

  def list
    @zipcodes = Zipcode.all
  end

  private
  def zipcode_params
    params.require(:zipcodes).permit(:zipcode, :place)
  end
end
