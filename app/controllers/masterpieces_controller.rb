class MasterpiecesController < ApplicationController
  before_action :set_masterpiece, only: [:show, :edit, :update, :destroy]

  # GET /masterpieces
  # GET /masterpieces.json
  def index
    @masterpieces = Masterpiece.all
  end

  # GET /masterpieces/1
  # GET /masterpieces/1.json
  def show
  end

  # GET /masterpieces/new
  def new
    @masterpiece = Masterpiece.new
  end

  # GET /masterpieces/1/edit
  def edit
  end

  # POST /masterpieces
  # POST /masterpieces.json
  def create
    @masterpiece = Masterpiece.new(masterpiece_params)

    respond_to do |format|
      if @masterpiece.save
        format.html { redirect_to @masterpiece, notice: 'Masterpiece was successfully created.' }
        format.json { render :show, status: :created, location: @masterpiece }
      else
        format.html { render :new }
        format.json { render json: @masterpiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masterpieces/1
  # PATCH/PUT /masterpieces/1.json
  def update
    respond_to do |format|
      if @masterpiece.update(masterpiece_params)
        format.html { redirect_to @masterpiece, notice: 'Masterpiece was successfully updated.' }
        format.json { render :show, status: :ok, location: @masterpiece }
      else
        format.html { render :edit }
        format.json { render json: @masterpiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masterpieces/1
  # DELETE /masterpieces/1.json
  def destroy
    @masterpiece.destroy
    respond_to do |format|
      format.html { redirect_to masterpieces_url, notice: 'Masterpiece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masterpiece
      @masterpiece = Masterpiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def masterpiece_params
      params.require(:masterpiece).permit(:Name, :Artist, :Picture, :Description, :country_id)
    end
end
