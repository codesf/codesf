class ConsController < ApplicationController
  # GET /cons
  # GET /cons.json
  def index
    @cons = Con.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cons }
    end
  end

  # GET /cons/1
  # GET /cons/1.json
  def show
    @con = Con.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @con }
    end
  end

  # GET /cons/new
  # GET /cons/new.json
  def new
    @con = Con.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @con }
    end
  end

  # GET /cons/1/edit
  def edit
    @con = Con.find(params[:id])
  end

  # POST /cons
  # POST /cons.json
  def create
    @con = Con.new(params[:con])

    respond_to do |format|
      if @con.save
        format.html { redirect_to @con, notice: 'Con was successfully created.' }
        format.json { render json: @con, status: :created, location: @con }
      else
        format.html { render action: "new" }
        format.json { render json: @con.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cons/1
  # PUT /cons/1.json
  def update
    @con = Con.find(params[:id])

    respond_to do |format|
      if @con.update_attributes(params[:con])
        format.html { redirect_to @con, notice: 'Con was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @con.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cons/1
  # DELETE /cons/1.json
  def destroy
    @con = Con.find(params[:id])
    @con.destroy

    respond_to do |format|
      format.html { redirect_to cons_url }
      format.json { head :ok }
    end
  end
end
