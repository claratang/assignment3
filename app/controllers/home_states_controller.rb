class HomeStatesController < ApplicationController
  before_action :set_home_state, only: [:show, :edit, :update, :destroy]

  # GET /home_states
  # GET /home_states.json
  def index
    @home_states = HomeState.all
  end

  # GET /home_states/1
  # GET /home_states/1.json
  def show
  end

  # GET /home_states/new
  def new
    @home_state = HomeState.new
  end

  # GET /home_states/1/edit
  def edit
  end

  # POST /home_states
  # POST /home_states.json
  def create
    @home_state = HomeState.new(home_state_params)

    respond_to do |format|
      if @home_state.save
        format.html { redirect_to @home_state, notice: 'Home state was successfully created.' }
        format.json { render :show, status: :created, location: @home_state }
      else
        format.html { render :new }
        format.json { render json: @home_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_states/1
  # PATCH/PUT /home_states/1.json
  def update
    respond_to do |format|
      if @home_state.update(home_state_params)
        format.html { redirect_to @home_state, notice: 'Home state was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_state }
      else
        format.html { render :edit }
        format.json { render json: @home_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_states/1
  # DELETE /home_states/1.json
  def destroy
    @home_state.destroy
    respond_to do |format|
      format.html { redirect_to home_states_url, notice: 'Home state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_state
      @home_state = HomeState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_state_params
      params.require(:home_state).permit(:name, :state)
    end
end
