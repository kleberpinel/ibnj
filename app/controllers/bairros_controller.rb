class BairrosController < ApplicationController
  # GET /bairros
  # GET /bairros.json
  def index
    @bairros = Bairro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bairros }
    end
  end

  # GET /bairros/1
  # GET /bairros/1.json
  def show
    @bairro = Bairro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bairro }
    end
  end

  # GET /bairros/new
  # GET /bairros/new.json
  def new
    @bairro = Bairro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bairro }
    end
  end

  # GET /bairros/1/edit
  def edit
    @bairro = Bairro.find(params[:id])
  end

  # POST /bairros
  # POST /bairros.json
  def create
    @bairro = Bairro.new(params[:bairro])

    respond_to do |format|
      if @bairro.save
        format.html { redirect_to @bairro, notice: 'Bairro was successfully created.' }
        format.json { render json: @bairro, status: :created, location: @bairro }
      else
        format.html { render action: "new" }
        format.json { render json: @bairro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bairros/1
  # PUT /bairros/1.json
  def update
    @bairro = Bairro.find(params[:id])

    respond_to do |format|
      if @bairro.update_attributes(params[:bairro])
        format.html { redirect_to @bairro, notice: 'Bairro was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bairro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bairros/1
  # DELETE /bairros/1.json
  def destroy
    @bairro = Bairro.find(params[:id])
    @bairro.destroy

    respond_to do |format|
      format.html { redirect_to bairros_url }
      format.json { head :ok }
    end
  end
end
