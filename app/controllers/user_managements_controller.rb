class UserManagementsController < ApplicationController
  before_action :set_user_management, only: %i[ show edit update destroy ]

  # GET /user_managements or /user_managements.json
  def index
    @user_managements = UserManagement.all
  end

  # GET /user_managements/1 or /user_managements/1.json
  def show
  end

  # GET /user_managements/new
  def new
    @user_management = UserManagement.new
  end

  # GET /user_managements/1/edit
  def edit
  end

  # POST /user_managements or /user_managements.json
  def create
    @user_management = UserManagement.new(user_management_params)

    respond_to do |format|
      if @user_management.save
        format.html { redirect_to user_management_url(@user_management), notice: "User management was successfully created." }
        format.json { render :show, status: :created, location: @user_management }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_managements/1 or /user_managements/1.json
  def update
    respond_to do |format|
      if @user_management.update(user_management_params)
        format.html { redirect_to user_management_url(@user_management), notice: "User management was successfully updated." }
        format.json { render :show, status: :ok, location: @user_management }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_managements/1 or /user_managements/1.json
  def destroy
    @user_management.destroy

    respond_to do |format|
      format.html { redirect_to user_managements_url, notice: "User management was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_management
      @user_management = UserManagement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_management_params
      params.require(:user_management).permit(:name, :email, :password)
    end
end
