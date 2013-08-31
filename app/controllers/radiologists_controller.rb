class RadiologistsController < ApplicationController
  # GET /radiologists
  # GET /radiologists.json
  def index
    @radiologists = Radiologist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @radiologists }
    end
  end

  # GET /radiologists/1
  # GET /radiologists/1.json
  def show
    @radiologist = Radiologist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @radiologist }
    end
  end

  # GET /radiologists/new
  # GET /radiologists/new.json
  def new
    @radiologist = Radiologist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @radiologist }
    end
  end

  # GET /radiologists/1/edit
  def edit
    @radiologist = Radiologist.find(params[:id])
  end

  # POST /radiologists
  # POST /radiologists.json
  def create
    @radiologist = Radiologist.new(params[:radiologist])

    respond_to do |format|
      if @radiologist.save
        format.html { redirect_to @radiologist, notice: 'Radiologist was successfully created.' }
        format.json { render json: @radiologist, status: :created, location: @radiologist }
      else
        format.html { render action: "new" }
        format.json { render json: @radiologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /radiologists/1
  # PUT /radiologists/1.json
  def update
    @radiologist = Radiologist.find(params[:id])

    respond_to do |format|
      if @radiologist.update_attributes(params[:radiologist])
        format.html { redirect_to @radiologist, notice: 'Radiologist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @radiologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radiologists/1
  # DELETE /radiologists/1.json
  def destroy
    @radiologist = Radiologist.find(params[:id])
    @radiologist.destroy

    respond_to do |format|
      format.html { redirect_to radiologists_url }
      format.json { head :no_content }
    end
  end
end
