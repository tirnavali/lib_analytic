class PersonelsController < ApplicationController
  before_action :set_personel, only: [:show, :edit, :update, :destroy]
  before_action :reset_form_size, except: [:edit]
  attr_accessor :form_size
  @form_size = 0
 
  
  # GET /personels
  # GET /personels.json
  def index
    unless ["asc", "desc"].one? params[:order]
      params[:order] = "asc"
    end
    @personels = Personel.all.order(name: params[:order])
    @personel = Personel.new
  end

  # GET /personels/1
  # GET /personels/1.json
  def show
  end

  # GET /personels/new
  def new
    @personel = Personel.new    
    @personel.employments.build
    
  end

  # GET /personels/1/edit
  def edit      
    if params[:form_size] && session[:form_size].to_i > 0
      session[:form_size] += 1
      session[:form_size].times { @personel.employments.build }
    elsif params[:form_size] 
      @personel.employments.build
      session[:form_size] = 1
    end
    
  end

  # POST /personels
  # POST /personels.json
  def create
    @personel = Personel.new(personel_params)

    respond_to do |format|
      if @personel.save
#TODO Add success message for create personel command.
        flash.now[:notice] = "Personel was successfully created."
        format.html { redirect_to @personel, notice: 'Personel was successfully created.' }
        #format.js
        format.json { render :index, status: :created, location: @personel }
      else
        format.html { render :new, notice: 'Personel Error.'  }
        format.json { render json: @personel.errors, status: :unprocessable_entity }
        #format.js
      end
    end
  end
  # PATCH/PUT /personels/1
  # PATCH/PUT /personels/1.json
  def update
    respond_to do |format|
      if @personel.update(personel_params)
        format.html { redirect_to @personel, notice: 'Personel was successfully updated.' }
        format.json { render :show, status: :ok, location: @personel }
        session[:form_size] = 0
      else
        format.html { render :edit }
        format.json { render json: @personel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personels/1
  # DELETE /personels/1.json
  def destroy
    @personel.destroy
    respond_to do |format|
      format.html { redirect_to personels_url, notice: 'Personel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personel
      @personel = Personel.find(params[:id])
    end

    def reset_form_size
      session.delete(:form_size)
    end

    # Only allow a list of trusted parameters through.
    def personel_params
      params.require(:personel).permit(:name, :surname, :passive,
         employments_attributes: [:id, :department_id, :start_date, :end_date, :_destroy])
                                   
    end
end
