class MakeateamsController < ApplicationController
  # GET /makeateams
  # GET /makeateams.json
  def index
    @makeateams = Makeateam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @makeateams }
    end
  end

  # GET /makeateams/1
  # GET /makeateams/1.json
  def show
    @makeateam = Makeateam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @makeateam }
    end
  end

  # GET /makeateams/new
  # GET /makeateams/new.json
  def new
    @makeateam = Makeateam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @makeateam }
    end
  end

  # GET /makeateams/1/edit
  def edit
    @makeateam = Makeateam.find(params[:id])
  end

  # POST /makeateams
  # POST /makeateams.json
  def create
    @makeateam = Makeateam.new(params[:makeateam])

    respond_to do |format|
      if @makeateam.save
        format.html { redirect_to @makeateam, notice: 'Makeateam was successfully created.' }
        format.json { render json: @makeateam, status: :created, location: @makeateam }
      else
        format.html { render action: "new" }
        format.json { render json: @makeateam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /makeateams/1
  # PUT /makeateams/1.json
  def update
    @makeateam = Makeateam.find(params[:id])

    respond_to do |format|
      if @makeateam.update_attributes(params[:makeateam])
        format.html { redirect_to @makeateam, notice: 'Makeateam was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @makeateam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makeateams/1
  # DELETE /makeateams/1.json
  def destroy
    @makeateam = Makeateam.find(params[:id])
    @makeateam.destroy

    respond_to do |format|
      format.html { redirect_to makeateams_url }
      format.json { head :ok }
    end
  end
end
