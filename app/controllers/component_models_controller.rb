class ComponentModelsController < ApplicationController
  # GET /component_models
  # GET /component_models.json
  def index
    @component_models = ComponentModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @component_models }
    end
  end

  # GET /component_models/1
  # GET /component_models/1.json
  def show
    @component_model = ComponentModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @component_model }
    end
  end

  # GET /component_models/new
  # GET /component_models/new.json
  def new
    @component_model = ComponentModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @component_model }
    end
  end

  # GET /component_models/1/edit
  def edit
    @component_model = ComponentModel.find(params[:id])
  end

  # POST /component_models
  # POST /component_models.json
  def create
    @component_model = ComponentModel.new(params[:component_model])

    respond_to do |format|
      if @component_model.save
        format.html { redirect_to @component_model, notice: 'Component model was successfully created.' }
        format.json { render json: @component_model, status: :created, location: @component_model }
      else
        format.html { render action: "new" }
        format.json { render json: @component_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /component_models/1
  # PUT /component_models/1.json
  def update
    @component_model = ComponentModel.find(params[:id])

    respond_to do |format|
      if @component_model.update_attributes(params[:component_model])
        format.html { redirect_to @component_model, notice: 'Component model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @component_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_models/1
  # DELETE /component_models/1.json
  def destroy
    @component_model = ComponentModel.find(params[:id])
    @component_model.destroy

    respond_to do |format|
      format.html { redirect_to component_models_url }
      format.json { head :no_content }
    end
  end
end
