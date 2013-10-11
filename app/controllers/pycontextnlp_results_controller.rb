class PycontextnlpResultsController < ApplicationController
  # GET /pycontextnlp_results
  # GET /pycontextnlp_results.json
  def index
    @pycontextnlp_results = PycontextnlpResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pycontextnlp_results }
    end
  end

  # GET /pycontextnlp_results/1
  # GET /pycontextnlp_results/1.json
  def show
    @pycontextnlp_result = PycontextnlpResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pycontextnlp_result }
    end
  end

  # GET /pycontextnlp_results/new
  # GET /pycontextnlp_results/new.json
  def new
    @pycontextnlp_result = PycontextnlpResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pycontextnlp_result }
    end
  end

  # GET /pycontextnlp_results/1/edit
  def edit
    @pycontextnlp_result = PycontextnlpResult.find(params[:id])
  end

  # POST /pycontextnlp_results
  # POST /pycontextnlp_results.json
  def create
    @pycontextnlp_result = PycontextnlpResult.new(params[:pycontextnlp_result])

    respond_to do |format|
      if @pycontextnlp_result.save
        format.html { redirect_to @pycontextnlp_result, notice: 'Pycontextnlp result was successfully created.' }
        format.json { render json: @pycontextnlp_result, status: :created, location: @pycontextnlp_result }
      else
        format.html { render action: "new" }
        format.json { render json: @pycontextnlp_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pycontextnlp_results/1
  # PUT /pycontextnlp_results/1.json
  def update
    @pycontextnlp_result = PycontextnlpResult.find(params[:id])

    respond_to do |format|
      if @pycontextnlp_result.update_attributes(params[:pycontextnlp_result])
        format.html { redirect_to @pycontextnlp_result, notice: 'Pycontextnlp result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pycontextnlp_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pycontextnlp_results/1
  # DELETE /pycontextnlp_results/1.json
  def destroy
    @pycontextnlp_result = PycontextnlpResult.find(params[:id])
    @pycontextnlp_result.destroy

    respond_to do |format|
      format.html { redirect_to pycontextnlp_results_url }
      format.json { head :no_content }
    end
  end
end
