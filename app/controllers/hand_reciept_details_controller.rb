class HandRecieptDetailsController < ApplicationController
  # GET /hand_reciept_details
  # GET /hand_reciept_details.json
  def index
    @hand_reciept_details = HandRecieptDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hand_reciept_details }
    end
  end

  # GET /hand_reciept_details/1
  # GET /hand_reciept_details/1.json
  def show
    @hand_reciept_detail = HandRecieptDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hand_reciept_detail }
    end
  end

  # GET /hand_reciept_details/new
  # GET /hand_reciept_details/new.json
  def new
    @hand_reciept_detail = HandRecieptDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hand_reciept_detail }
    end
  end

  # GET /hand_reciept_details/1/edit
  def edit
    @hand_reciept_detail = HandRecieptDetail.find(params[:id])
  end

  # POST /hand_reciept_details
  # POST /hand_reciept_details.json
  def create
    @hand_reciept_detail = HandRecieptDetail.new(params[:hand_reciept_detail])

    respond_to do |format|
      if @hand_reciept_detail.save
        format.html { redirect_to @hand_reciept_detail, notice: 'Hand reciept detail was successfully created.' }
        format.json { render json: @hand_reciept_detail, status: :created, location: @hand_reciept_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @hand_reciept_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hand_reciept_details/1
  # PUT /hand_reciept_details/1.json
  def update
    @hand_reciept_detail = HandRecieptDetail.find(params[:id])

    respond_to do |format|
      if @hand_reciept_detail.update_attributes(params[:hand_reciept_detail])
        format.html { redirect_to @hand_reciept_detail, notice: 'Hand reciept detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hand_reciept_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hand_reciept_details/1
  # DELETE /hand_reciept_details/1.json
  def destroy
    @hand_reciept_detail = HandRecieptDetail.find(params[:id])
    @hand_reciept_detail.destroy

    respond_to do |format|
      format.html { redirect_to hand_reciept_details_url }
      format.json { head :no_content }
    end
  end
end
