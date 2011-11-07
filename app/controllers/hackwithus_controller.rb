class HackwithusController < ApplicationController
  # GET /hackwithus
  # GET /hackwithus.json
  def index
    @hackwithus = Hackwithu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @hackwithus }
    end
  end

  # GET /hackwithus/1
  # GET /hackwithus/1.json
  def show
    @hackwithu = Hackwithu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @hackwithu }
    end
  end

  # GET /hackwithus/new
  # GET /hackwithus/new.json
  def new
    @hackwithu = Hackwithu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @hackwithu }
    end
  end

  # GET /hackwithus/1/edit
  def edit
    @hackwithu = Hackwithu.find(params[:id])
  end

  # POST /hackwithus
  # POST /hackwithus.json
  def create
    @hackwithu = Hackwithu.new(params[:hackwithu])

    respond_to do |format|
      if @hackwithu.save
        format.html { redirect_to @hackwithu, :notice => 'Hackwithu was successfully created.' }
        format.json { render :json => @hackwithu, :status => :created, :location => @hackwithu }
      else
        format.html { render :action => "new" }
        format.json { render :json => @hackwithu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hackwithus/1
  # PUT /hackwithus/1.json
  def update
    @hackwithu = Hackwithu.find(params[:id])

    respond_to do |format|
      if @hackwithu.update_attributes(params[:hackwithu])
        format.html { redirect_to @hackwithu, :notice => 'Hackwithu was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @hackwithu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hackwithus/1
  # DELETE /hackwithus/1.json
  def destroy
    @hackwithu = Hackwithu.find(params[:id])
    @hackwithu.destroy

    respond_to do |format|
      format.html { redirect_to hackwithus_url }
      format.json { head :ok }
    end
  end
end
