class SchoolInterestsController < ApplicationController
  before_action :set_school_interest, only: [:show, :edit, :update, :destroy]

  # GET /school_interests
  # GET /school_interests.json
  def index
    @school_interests = SchoolInterest.all
  end

  # GET /school_interests/1
  # GET /school_interests/1.json
  def show
  end

  # GET /school_interests/new
  def new
    @school_interest = SchoolInterest.new
  end

  # GET /school_interests/1/edit
  def edit
  end

  # POST /school_interests
  # POST /school_interests.json
  def create
    @school_interest = SchoolInterest.new(school_interest_params)

    respond_to do |format|
      if @school_interest.save
        format.html { redirect_to @school_interest, notice: 'School interest was successfully created.' }
        format.json { render :show, status: :created, location: @school_interest }
      else
        format.html { render :new }
        format.json { render json: @school_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_interests/1
  # PATCH/PUT /school_interests/1.json
  def update
    respond_to do |format|
      if @school_interest.update(school_interest_params)
        format.html { redirect_to @school_interest, notice: 'School interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_interest }
      else
        format.html { render :edit }
        format.json { render json: @school_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_interests/1
  # DELETE /school_interests/1.json
  def destroy
    @school_interest.destroy
    respond_to do |format|
      format.html { redirect_to school_interests_url, notice: 'School interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_interest
      @school_interest = SchoolInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_interest_params
      params.require(:school_interest).permit(:name)
    end
end
