class CavesController < ApplicationController
  # GET /caves
  # GET /caves.json
  def index
    @caves = Cafe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @caves }
    end
  end

  # GET /caves/1
  # GET /caves/1.json
  def show
    @cafe = Cafe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cafe }
    end
  end

  # GET /caves/new
  # GET /caves/new.json
  def new
    @cafe = Cafe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cafe }
    end
  end

  # GET /caves/1/edit
  def edit
    @cafe = Cafe.find(params[:id])
  end

  # POST /caves
  # POST /caves.json
  def create
    @cafe = Cafe.new(params[:cafe])

    respond_to do |format|
      if @cafe.save
        format.html { redirect_to @cafe, :notice => 'Cafe was successfully created.' }
        format.json { render :json => @cafe, :status => :created, :location => @cafe }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cafe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caves/1
  # PUT /caves/1.json
  def update
    @cafe = Cafe.find(params[:id])

    respond_to do |format|
      if @cafe.update_attributes(params[:cafe])
        format.html { redirect_to @cafe, :notice => 'Cafe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cafe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caves/1
  # DELETE /caves/1.json
  def destroy
    @cafe = Cafe.find(params[:id])
    @cafe.destroy

    respond_to do |format|
      format.html { redirect_to caves_url }
      format.json { head :ok }
    end
  end
end
