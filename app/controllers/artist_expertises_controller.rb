class ArtistExpertisesController < ApplicationController
  before_action :set_artist_expertise, only: [:show, :edit, :update, :destroy]
  before_filter :require_authorization, only: [:edit, :update, :destroy, :new, :create]
  # GET /artist_expertises
  # GET /artist_expertises.json
  def index
    @artist_expertises = ArtistExpertise.all
  end

  # GET /artist_expertises/1
  # GET /artist_expertises/1.json
  def show
  end

  # GET /artist_expertises/new
  def new
    @artist_expertise = ArtistExpertise.new
  end

  # GET /artist_expertises/1/edit
  def edit
  end

  # POST /artist_expertises
  # POST /artist_expertises.json
  def create
    @artist_expertise = ArtistExpertise.new(artist_expertise_params)

    respond_to do |format|
      if @artist_expertise.save
        format.html { redirect_to @artist_expertise, notice: 'Artist expertise was successfully created.' }
        format.json { render :show, status: :created, location: @artist_expertise }
      else
        format.html { render :new }
        format.json { render json: @artist_expertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_expertises/1
  # PATCH/PUT /artist_expertises/1.json
  def update
    respond_to do |format|
      if @artist_expertise.update(artist_expertise_params)
        format.html { redirect_to @artist_expertise, notice: 'Artist expertise was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_expertise }
      else
        format.html { render :edit }
        format.json { render json: @artist_expertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_expertises/1
  # DELETE /artist_expertises/1.json
  def destroy
    @artist_expertise.destroy
    respond_to do |format|
      format.html { redirect_to artist_expertises_url, notice: 'Artist expertise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def require_authorization
      redirect_to artist_expertises_path, flash: {notice:"Cannot perform action."} unless current_user && current_user.admin?
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_artist_expertise
      @artist_expertise = ArtistExpertise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_expertise_params
      params.require(:artist_expertise).permit(:name)
    end
end
