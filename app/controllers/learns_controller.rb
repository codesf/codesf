class LearnsController < ApplicationController
  # GET /learns
  # GET /learns.json
  def index
    @learns = Learn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @learns }
    end
  end

  # GET /learns/1
  # GET /learns/1.json
  def show
    @learn = Learn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @learn }
    end
  end

  # GET /learns/new
  # GET /learns/new.json
  def new
    @learn = Learn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @learn }
    end
  end

  # GET /learns/1/edit
  def edit
    @learn = Learn.find(params[:id])
  end

  # POST /learns
  # POST /learns.json
  def create
    @learn = Learn.new(params[:learn])

    respond_to do |format|
      if @learn.save
        format.html { redirect_to @learn, notice: 'Learn was successfully created.' }
        format.json { render json: @learn, status: :created, location: @learn }
      else
        format.html { render action: "new" }
        format.json { render json: @learn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /learns/1
  # PUT /learns/1.json
  def update
    @learn = Learn.find(params[:id])

    respond_to do |format|
      if @learn.update_attributes(params[:learn])
        format.html { redirect_to @learn, notice: 'Learn was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @learn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learns/1
  # DELETE /learns/1.json
  def destroy
    @learn = Learn.find(params[:id])
    @learn.destroy

    respond_to do |format|
      format.html { redirect_to learns_url }
      format.json { head :ok }
    end
  end
end
