class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end

  def create
    @entry = Entry.new({
      :place_id    => params[:entry][:place_id],
      :title       => params[:entry][:title],
      :description => params[:entry][:description],
      :occurred_on => params[:entry][:occurred_on]
    })
    @entry.save
    redirect_to "/places/#{@entry.place_id}"
  end
end