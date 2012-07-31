class PesquisaReligiosasController < ApplicationController
  # GET /pesquisa_religiosas
  # GET /pesquisa_religiosas.json
  def index
    @pesquisa_religiosas = PesquisaReligiosa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pesquisa_religiosas }
    end
  end

  # GET /pesquisa_religiosas/1
  # GET /pesquisa_religiosas/1.json
  def show
    @pesquisa_religiosa = PesquisaReligiosa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pesquisa_religiosa }
    end
  end

  # GET /pesquisa_religiosas/new
  # GET /pesquisa_religiosas/new.json
  def new
    @pesquisa_religiosa = PesquisaReligiosa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pesquisa_religiosa }
    end
  end

  # GET /pesquisa_religiosas/1/edit
  def edit
    @pesquisa_religiosa = PesquisaReligiosa.find(params[:id])
  end

  # POST /pesquisa_religiosas
  # POST /pesquisa_religiosas.json
  def create
    @pesquisa_religiosa = PesquisaReligiosa.new(params[:pesquisa_religiosa])

    respond_to do |format|
      if @pesquisa_religiosa.save
        format.html { redirect_to @pesquisa_religiosa, notice: 'Pesquisa religiosa was successfully created.' }
        format.json { render json: @pesquisa_religiosa, status: :created, location: @pesquisa_religiosa }
      else
        format.html { render action: "new" }
        format.json { render json: @pesquisa_religiosa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pesquisa_religiosas/1
  # PUT /pesquisa_religiosas/1.json
  def update
    @pesquisa_religiosa = PesquisaReligiosa.find(params[:id])

    respond_to do |format|
      if @pesquisa_religiosa.update_attributes(params[:pesquisa_religiosa])
        format.html { redirect_to @pesquisa_religiosa, notice: 'Pesquisa religiosa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pesquisa_religiosa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesquisa_religiosas/1
  # DELETE /pesquisa_religiosas/1.json
  def destroy
    @pesquisa_religiosa = PesquisaReligiosa.find(params[:id])
    @pesquisa_religiosa.destroy

    respond_to do |format|
      format.html { redirect_to pesquisa_religiosas_url }
      format.json { head :ok }
    end
  end
end
