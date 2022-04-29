class CaronasController < ApplicationController

  def index
    @carona = @carona.all
  end

  def new
    @carona = @carona.new
  end

  def show

  end

  def edit

  end

  def create
    @carona = Carona.new(carona_params)

    respond_to do |format|
      if @carona.save
        format.html { redirect_to carona_url(@carona), notice: "Carona was successfully created." }
        format.json { render :show, status: :created, location: @carona }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carona.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @carona.update(carona_params)
        format.html { redirect_to carona_url(@carona), notice: "Carona was successfully updated." }
        format.json { render :show, status: :ok, location: @carona }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carona.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end


end
