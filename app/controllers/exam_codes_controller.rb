class ExamCodesController < ApplicationController
  # GET /exam_codes
  # GET /exam_codes.json
  def index
    @exam_codes = ExamCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exam_codes }
    end
  end

  # GET /exam_codes/1
  # GET /exam_codes/1.json
  def show
    @exam_code = ExamCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exam_code }
    end
  end

  # GET /exam_codes/new
  # GET /exam_codes/new.json
  def new
    @exam_code = ExamCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam_code }
    end
  end

  # GET /exam_codes/1/edit
  def edit
    @exam_code = ExamCode.find(params[:id])
  end

  # POST /exam_codes
  # POST /exam_codes.json
  def create
    @exam_code = ExamCode.new(params[:exam_code])

    respond_to do |format|
      if @exam_code.save
        format.html { redirect_to @exam_code, notice: 'Exam code was successfully created.' }
        format.json { render json: @exam_code, status: :created, location: @exam_code }
      else
        format.html { render action: "new" }
        format.json { render json: @exam_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exam_codes/1
  # PUT /exam_codes/1.json
  def update
    @exam_code = ExamCode.find(params[:id])

    respond_to do |format|
      if @exam_code.update_attributes(params[:exam_code])
        format.html { redirect_to @exam_code, notice: 'Exam code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_codes/1
  # DELETE /exam_codes/1.json
  def destroy
    @exam_code = ExamCode.find(params[:id])
    @exam_code.destroy

    respond_to do |format|
      format.html { redirect_to exam_codes_url }
      format.json { head :no_content }
    end
  end
end
