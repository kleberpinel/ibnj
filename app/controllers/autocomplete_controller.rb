class AutocompleteController < ApplicationController
  
  before_filter :authenticate_pessoa!
  
  # GET /pessoas
  # GET /pessoas.json
  def pessoas
    pessoas = Pessoa.where("nome LIKE '%#{params[:term]}%'")
    listAutocomplete = []

    pessoas.each do|p|
      autocomplete = Autocomplete.new(p.id, p.nome, p.nome)

      listAutocomplete.push(autocomplete)
    end

    respond_to do |format|
      format.html # pessoas.html.erb
      format.json { render json: listAutocomplete }
    end
    
  end

end