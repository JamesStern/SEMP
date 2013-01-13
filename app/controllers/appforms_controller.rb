class AppformsController < ApplicationController
  # GET /appforms
  # GET /appforms.json
  def index 
    @appforms = Appform.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appforms }
    end
  end

  # GET /appforms/1
  # GET /appforms/1.json
  def show
    @appform = Appform.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appform }
    end
  end

  # GET /appforms/new
  # GET /appforms/new.json
  def new
    @appform = Appform.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appform }
    end
  end

  # GET /appforms/1/edit
  def edit
    @appform = Appform.find(params[:id])
  end

  # POST /appforms
  # POST /appforms.json
  def create
    @user = current_user
    @appform = @user.appforms.create(params[:appform])

    respond_to do |format|
      if @appform.save
        format.html { redirect_to root_url, notice: 'Your application was successfully created.' }
        format.json { render json: @appform, status: :created, location: @appform }
      else
        format.html { render action: "new" }
        format.json { render json: @appform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appforms/1
  # PUT /appforms/1.json
  def update
    @appform = Appform.find(params[:id])

    respond_to do |format|
      if @appform.update_attributes(params[:appform])
        format.html { redirect_to root_url, notice: 'Your application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appforms/1
  # DELETE /appforms/1.json
  def destroy
    @appform = Appform.find(params[:id])
    @appform.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
end
