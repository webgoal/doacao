class NecessidadesController < ApplicationController
  before_action :set_necessidade, only: [:show, :edit, :update, :destroy]

  # GET /necessidades
  # GET /necessidades.json
  def index
    @necessidades = Necessidade.all
  end

  # GET /necessidades/1
  # GET /necessidades/1.json
  def show
  end

  # GET /necessidades/new
  def new
    @necessidade = Necessidade.new
  end

  # GET /necessidades/1/edit
  def edit
  end

  # POST /necessidades
  # POST /necessidades.json
  def create
    @necessidade = Necessidade.new(necessidade_params)

    respond_to do |format|
      if @necessidade.save
        format.html { redirect_to @necessidade, notice: 'Necessidade was successfully created.' }
        format.json { render :show, status: :created, location: @necessidade }
      else
        format.html { render :new }
        format.json { render json: @necessidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /necessidades/1
  # PATCH/PUT /necessidades/1.json
  def update
    respond_to do |format|
      if @necessidade.update(necessidade_params)
        format.html { redirect_to @necessidade, notice: 'Necessidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @necessidade }
      else
        format.html { render :edit }
        format.json { render json: @necessidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /necessidades/1
  # DELETE /necessidades/1.json
  def destroy
    @necessidade.destroy
    respond_to do |format|
      format.html { redirect_to necessidades_url, notice: 'Necessidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_necessidade
      @necessidade = Necessidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def necessidade_params
      params.require(:necessidade).permit(:nome, :produto)
    end
end
