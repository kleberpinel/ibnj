class EntrevistasController < ApplicationController

  before_filter :authenticate_pessoa!
  
  # GET /entrevistas
  # GET /entrevistas.json
  def index
    @entrevistas = Entrevista.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entrevistas }
    end
  end

  # GET /entrevistas/1
  # GET /entrevistas/1.json
  def show
    @entrevista = Entrevista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entrevista }
    end
  end

  # GET /entrevistas/new
  # GET /entrevistas/new.json
  def new
    @entrevista = Entrevista.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entrevista }
    end
  end

  # GET /entrevistas/1/edit
  def edit
    @entrevista = Entrevista.find(params[:id])
  end

  # POST /entrevistas
  # POST /entrevistas.json
  def create
    @entrevista = Entrevista.new(params[:entrevista])

    respond_to do |format|
      if @entrevista.save
        format.html { redirect_to @entrevista, notice: 'Entrevista was successfully created.' }
        format.json { render json: @entrevista, status: :created, location: @entrevista }
      else
        format.html { render action: "new" }
        format.json { render json: @entrevista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entrevistas/1
  # PUT /entrevistas/1.json
  def update
    @entrevista = Entrevista.find(params[:id])

    respond_to do |format|
      if @entrevista.update_attributes(params[:entrevista])
        format.html { redirect_to @entrevista, notice: 'Entrevista was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @entrevista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrevistas/1
  # DELETE /entrevistas/1.json
  def destroy
    @entrevista = Entrevista.find(params[:id])
    @entrevista.destroy

    respond_to do |format|
      format.html { redirect_to entrevistas_url }
      format.json { head :ok }
    end
  end
end
