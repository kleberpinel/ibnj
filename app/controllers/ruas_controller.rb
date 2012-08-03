class RuasController < ApplicationController

  # GET /ruas
  # GET /ruas.json
  def index
    @ruas = Rua.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ruas }
    end
  end

  # GET /ruas/1
  # GET /ruas/1.json
  def show
    @rua = Rua.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rua }
    end
  end

  # GET /ruas/new
  # GET /ruas/new.json
  def new
    @rua = Rua.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rua }
    end
  end

  # GET /ruas/1/edit
  def edit
    @rua = Rua.find(params[:id])
  end

  # POST /ruas
  # POST /ruas.json
  def create
    @rua = Rua.new(params[:rua])

    respond_to do |format|
      if @rua.save
        format.html { redirect_to @rua, notice: 'Rua was successfully created.' }
        format.json { render json: @rua, status: :created, location: @rua }
      else
        format.html { render action: "new" }
        format.json { render json: @rua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ruas/1
  # PUT /ruas/1.json
  def update
    @rua = Rua.find(params[:id])

    respond_to do |format|
      if @rua.update_attributes(params[:rua])
        format.html { redirect_to @rua, notice: 'Rua was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruas/1
  # DELETE /ruas/1.json
  def destroy
    @rua = Rua.find(params[:id])
    @rua.destroy

    respond_to do |format|
      format.html { redirect_to ruas_url }
      format.json { head :ok }
    end
  end
end
