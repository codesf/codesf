class TeachesController < ApplicationController
  # GET /teaches
  # GET /teaches.json
  def index
    @teaches = Teach.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teaches }
    end
  end

  # GET /teaches/1
  # GET /teaches/1.json
  def show
    @teach = Teach.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teach }
    end
  end

  # GET /teaches/new
  # GET /teaches/new.json
  def new
    @teach = Teach.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teach }
    end
  end

  # GET /teaches/1/edit
  def edit
    @teach = Teach.find(params[:id])
  end

  # POST /teaches
  # POST /teaches.json
  def create
    @teach = Teach.new(params[:teach])

    respond_to do |format|
      if @teach.save
        format.html { redirect_to @teach, notice: 'Teach was successfully created.' }
        format.json { render json: @teach, status: :created, location: @teach }
      else
        format.html { render action: "new" }
        format.json { render json: @teach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teaches/1
  # PUT /teaches/1.json
  def update
    @teach = Teach.find(params[:id])

    respond_to do |format|
      if @teach.update_attributes(params[:teach])
        format.html { redirect_to @teach, notice: 'Teach was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @teach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaches/1
  # DELETE /teaches/1.json
  def destroy
    @teach = Teach.find(params[:id])
    @teach.destroy

    respond_to do |format|
      format.html { redirect_to teaches_url }
      format.json { head :ok }
    end
  end
end
