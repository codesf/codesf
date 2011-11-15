class HackerspacesController < ApplicationController
  # GET /hackerspaces
  # GET /hackerspaces.json
  def index
    @hackerspaces = Hackerspace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hackerspaces }
    end
  end

  # GET /hackerspaces/1
  # GET /hackerspaces/1.json
  def show
    @hackerspace = Hackerspace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hackerspace }
    end
  end

  # GET /hackerspaces/new
  # GET /hackerspaces/new.json
  def new
    @hackerspace = Hackerspace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hackerspace }
    end
  end

  # GET /hackerspaces/1/edit
  def edit
    @hackerspace = Hackerspace.find(params[:id])
  end

  # POST /hackerspaces
  # POST /hackerspaces.json
  def create
    @hackerspace = Hackerspace.new(params[:hackerspace])

    respond_to do |format|
      if @hackerspace.save
        format.html { redirect_to @hackerspace, notice: 'Hackerspace was successfully created.' }
        format.json { render json: @hackerspace, status: :created, location: @hackerspace }
      else
        format.html { render action: "new" }
        format.json { render json: @hackerspace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hackerspaces/1
  # PUT /hackerspaces/1.json
  def update
    @hackerspace = Hackerspace.find(params[:id])

    respond_to do |format|
      if @hackerspace.update_attributes(params[:hackerspace])
        format.html { redirect_to @hackerspace, notice: 'Hackerspace was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hackerspace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hackerspaces/1
  # DELETE /hackerspaces/1.json
  def destroy
    @hackerspace = Hackerspace.find(params[:id])
    @hackerspace.destroy

    respond_to do |format|
      format.html { redirect_to hackerspaces_url }
      format.json { head :ok }
    end
  end
end
