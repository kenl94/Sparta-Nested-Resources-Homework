class AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show, :edit, :update, :destroy]

  # GET /abilities
  # GET /abilities.json
  def index
    @abilities = Ability.all
    @superhero = Superhero.find(params[:superhero_id])
  end

  # GET /abilities/1
  # GET /abilities/1.json
  def show
    @superhero = Superhero.find(params[:superhero_id])
  end

  # GET /abilities/new
  def new
    @ability = Ability.new
    @superhero = Superhero.find(params[:superhero_id])
  end

  # GET /abilities/1/edit
  def edit
    @superhero = Superhero.find(params[:superhero_id])
  end

  # POST /abilities
  # POST /abilities.json
  def create
    @ability = Ability.new(ability_params)
    @superhero = Superhero.find(params[:superhero_id])
    @ability.superhero = @superhero

    respond_to do |format|
      if @ability.save
        format.html { redirect_to superhero_ability_path(@superhero, @ability), notice: 'Ability was successfully created.' }
        format.json { render :show, status: :created, location: @ability }
      else
        format.html { render :new }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abilities/1
  # PATCH/PUT /abilities/1.json
  def update

    respond_to do |format|
      if @ability.update(ability_params)
        format.html { redirect_to superhero_ability_path, notice: 'Ability was successfully updated.' }
        format.json { render :show, status: :ok, location: @ability }
      else
        format.html { render :edit }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abilities/1
  # DELETE /abilities/1.json
  def destroy
    @superhero = Superhero.find(params[:superhero_id])
    @ability.destroy
    respond_to do |format|
      format.html { redirect_to superhero_path(@superhero), notice: 'Ability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ability
      @ability = Ability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ability_params
      params.require(:ability).permit(:power, :superhero_id)
    end
end
