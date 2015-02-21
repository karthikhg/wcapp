class PoolsController < ApplicationController
  before_action :set_pool, only: [:show, :edit, :update, :destroy]

  # GET /pools
  # GET /pools.json
  def index
    @pools = Pool.all
    # p = Pool.first
    # t = Team.new
    # t.name = "New Zealand"
    # p.teams << t
    # t = Team.new
    # t.name = "Australia"
    # p.teams << t
    # t = Team.new
    # t.name = "England"
    # p.teams << t
    # t = Team.new
    # t.name = "Sri Lanka"
    # p.teams << t
    # t = Team.new
    # t.name = "Afghanistan"
    # p.teams << t
    # t = Team.new
    # t.name = "Scotland"
    # p.teams << t
    # t = Team.new
    # t.name = "Bangladesh"
    # p.teams << t

    # p = Pool.second
    # t = Team.new
    # t.name = "India"
    # p.teams << t
    # t = Team.new
    # t.name = "Pakistan"
    # p.teams << t
    # t = Team.new
    # t.name = "West Indies"
    # p.teams << t
    # t = Team.new
    # t.name = "South Africa"
    # p.teams << t
    # t = Team.new
    # t.name = "Ireland"
    # p.teams << t
    # t = Team.new
    # t.name = "UAE"
    # p.teams << t
    # t = Team.new
    # t.name = "Zimbabwe"
    # p.teams << t

    @pools
  end

  # GET /pools/1
  # GET /pools/1.json
  def show
  end

  # GET /pools/new
  def new
    @pool = Pool.new
  end

  # GET /pools/1/edit
  def edit
  end

  # POST /pools
  # POST /pools.json
  def create
    @pool = Pool.new(pool_params)

    respond_to do |format|
      if @pool.save
        format.html { redirect_to @pool, notice: 'Pool was successfully created.' }
        format.json { render :show, status: :created, location: @pool }
      else
        format.html { render :new }
        format.json { render json: @pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pools/1
  # PATCH/PUT /pools/1.json
  def update
    respond_to do |format|
      if @pool.update(pool_params)
        format.html { redirect_to @pool, notice: 'Pool was successfully updated.' }
        format.json { render :show, status: :ok, location: @pool }
      else
        format.html { render :edit }
        format.json { render json: @pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pools/1
  # DELETE /pools/1.json
  def destroy
    @pool.destroy
    respond_to do |format|
      format.html { redirect_to pools_url, notice: 'Pool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pool
      @pool = Pool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pool_params
      params.require(:pool).permit(:name)
    end
end
