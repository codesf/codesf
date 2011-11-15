class OurprojectsController < ApplicationController
  # GET /ourprojects
  # GET /ourprojects.json
  def index
    @ourprojects = Ourproject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ourprojects }
    end
  end

  # GET /ourprojects/1
  # GET /ourprojects/1.json
  def show
    @ourproject = Ourproject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ourproject }
    end
  end

  # GET /ourprojects/new
  # GET /ourprojects/new.json
  def new
    @ourproject = Ourproject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ourproject }
    end
  end

  # GET /ourprojects/1/edit
  def edit
    @ourproject = Ourproject.find(params[:id])
  end

  # POST /ourprojects
  # POST /ourprojects.json
  def create
    @ourproject = Ourproject.new(params[:ourproject])

    respond_to do |format|
      if @ourproject.save
        format.html { redirect_to @ourproject, notice: 'Ourproject was successfully created.' }
        format.json { render json: @ourproject, status: :created, location: @ourproject }
      else
        format.html { render action: "new" }
        format.json { render json: @ourproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ourprojects/1
  # PUT /ourprojects/1.json
  def update
    @ourproject = Ourproject.find(params[:id])

    respond_to do |format|
      if @ourproject.update_attributes(params[:ourproject])
        format.html { redirect_to @ourproject, notice: 'Ourproject was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ourproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ourprojects/1
  # DELETE /ourprojects/1.json
  def destroy
    @ourproject = Ourproject.find(params[:id])
    @ourproject.destroy

    respond_to do |format|
      format.html { redirect_to ourprojects_url }
      format.json { head :ok }
    end
  end
end
