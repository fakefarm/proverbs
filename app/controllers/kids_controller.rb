class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update, :destroy]
  before_action :checky_cheese_parent_check, only: [:show]
  before_action :check_logged_in

  def index
    @kids = Kid.all
  end

  def show
    @verses = @kid.memorizeds
    @current = if @verses.last
        @undo = @kid.memorizeds.last
        Verse.find(@verses.max.verse.ref_id + 1)
      else
        Verse.find_by_ref_id(1)
      end
  end

  def new
    @kid = Kid.new
  end

  def edit; end

  def create
    @kid = Kid.new(kid_params)

    respond_to do |format|
      if @kid.save
        format.html { redirect_to @kid, notice: "#{@kid.name} has begun the journey." }
        format.json { render :show, status: :created, location: @kid }
      else
        format.html { render :new }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @kid.update(kid_params)
        format.html { redirect_to @kid, notice: "#{@kid.name}, you bless my heart..." }
        format.json { render :show, status: :ok, location: @kid }
      else
        format.html { render :edit }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @kid.destroy
    respond_to do |format|
      format.html { redirect_to kids_url, notice: 'Kid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def checky_cheese_parent_check
    if @kid.parent_id != current_user.parent.id
      redirect_to parent_path(current_user.parent), notice: "You're not a kidnapper, are YOU?!????"
    end
  end

  def set_kid
    @kid = Kid.find(params[:id])
  end

  def kid_params
    params.require(:kid).permit(:parent_id, :name)
  end
end
