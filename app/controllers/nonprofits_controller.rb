class NonprofitsController < ApplicationController
  # GET /nonprofits
  # GET /nonprofits.json
  def index
    @nonprofits = Nonprofit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nonprofits }
    end
  end

  # GET /nonprofits/1
  # GET /nonprofits/1.json
  def show
    @nonprofit = Nonprofit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nonprofit }
    end
  end

  # GET /nonprofits/new
  # GET /nonprofits/new.json
  def new
    @nonprofit = Nonprofit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nonprofit }
    end
  end

  # GET /nonprofits/1/edit
  def edit
    @nonprofit = Nonprofit.find(params[:id])
  end

  # POST /nonprofits
  # POST /nonprofits.json
  def create
    @nonprofit = Nonprofit.new(params[:nonprofit])

    respond_to do |format|
      if @nonprofit.save
        format.html { redirect_to @nonprofit, notice: 'Nonprofit was successfully created.' }
        format.json { render json: @nonprofit, status: :created, location: @nonprofit }
      else
        format.html { render action: "new" }
        format.json { render json: @nonprofit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nonprofits/1
  # PUT /nonprofits/1.json
  def update
    @nonprofit = Nonprofit.find(params[:id])

    respond_to do |format|
      if @nonprofit.update_attributes(params[:nonprofit])
        format.html { redirect_to @nonprofit, notice: 'Nonprofit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nonprofit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nonprofits/1
  # DELETE /nonprofits/1.json
  def destroy
    @nonprofit = Nonprofit.find(params[:id])
    @nonprofit.destroy

    respond_to do |format|
      format.html { redirect_to nonprofits_url }
      format.json { head :ok }
    end
  end
end
