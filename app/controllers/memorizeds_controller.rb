class MemorizedsController < ApplicationController

  def create
    @mem = Memorized.new(mem_params)

    respond_to do |format|
      if @mem.save
        format.html { redirect_to kid_path(@mem.kid_id), notice: "Woo hoo! Go, #{@mem.kid.name}!" }
        format.json { render :show, status: :created, location: @kid }
      else
        format.html { render :new }
        format.json { render json: @mem.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    m = Memorized.find(params[:id])
    m.destroy
    redirect_to :back
  end

  private

    def mem_params
      params.permit(:kid_id, :verse_id)
    end
end
