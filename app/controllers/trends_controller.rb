class TrendsController < ApplicationController
  before_action :set_trend, only: %i[ show edit update destroy ]



  # GET /trends or /trends.json
  def index
    @trends = Trend.all

  end

  # GET /trends/1 or /trends/1.json
  def show
  end

  # GET /trends/new
  def new
    @trend = Trend.new
  end

  # GET /trends/1/edit
  def edit
  end

  # POST /trends or /trends.json
  def create
    @trend = Trend.new(trend_params)

    respond_to do |format|
      if @trend.save
        format.html { redirect_to trend_url(@trend), notice: "Trend was successfully created." }
        format.json { render :show, status: :created, location: @trend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trends/1 or /trends/1.json
  def update
    respond_to do |format|
      if @trend.update(trend_params)
        format.html { redirect_to trend_url(@trend), notice: "Trend was successfully updated." }
        format.json { render :show, status: :ok, location: @trend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trends/1 or /trends/1.json
  def destroy
    @trend.destroy

    respond_to do |format|
      format.html { redirect_to trends_url, notice: "Trend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trend
      @trend = Trend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trend_params
      params.require(:trend).permit(:label, :description, :domain, :example, :started_date, :posting_date, :virality, :ideas)
    end
end
