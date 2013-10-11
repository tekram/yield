class RequestingMdsController < ApplicationController
  # GET /requesting_mds
  # GET /requesting_mds.json
  def index
    @requesting_mds = RequestingMd.order(:created_at).page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requesting_mds }
    end
  end

  # GET /requesting_mds/1
  # GET /requesting_mds/1.json
  def show
    @requesting_md = RequestingMd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @requesting_md }
    end
  end

  # GET /requesting_mds/new
  # GET /requesting_mds/new.json
  def new
    @requesting_md = RequestingMd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @requesting_md }
    end
  end

  # GET /requesting_mds/1/edit
  def edit
    @requesting_md = RequestingMd.find(params[:id])
  end

  # POST /requesting_mds
  # POST /requesting_mds.json
  def create
    @requesting_md = RequestingMd.new(params[:requesting_md])

    respond_to do |format|
      if @requesting_md.save
        format.html { redirect_to @requesting_md, notice: 'Requesting md was successfully created.' }
        format.json { render json: @requesting_md, status: :created, location: @requesting_md }
      else
        format.html { render action: "new" }
        format.json { render json: @requesting_md.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /requesting_mds/1
  # PUT /requesting_mds/1.json
  def update
    @requesting_md = RequestingMd.find(params[:id])

    respond_to do |format|
      if @requesting_md.update_attributes(params[:requesting_md])
        format.html { redirect_to @requesting_md, notice: 'Requesting md was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @requesting_md.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requesting_mds/1
  # DELETE /requesting_mds/1.json
  def destroy
    @requesting_md = RequestingMd.find(params[:id])
    @requesting_md.destroy

    respond_to do |format|
      format.html { redirect_to requesting_mds_url }
      format.json { head :no_content }
    end
  end
end
