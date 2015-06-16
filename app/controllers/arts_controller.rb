class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]

  # GET /arts
  def index
    @arts = Art.all
  end

  # GET /arts/1
  def show
  end

  # GET /arts/new
  def new
    @art = Art.new
  end

  # GET /arts/1/edit
  def edit
  end

  # POST /arts
  def create
    @art = Art.new(art_params)

    if @art.save
      redirect_to @art, notice: 'Art was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /arts/1
  def update
    if @art.update(art_params)
      redirect_to @art, notice: 'Art was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /arts/1
  def destroy
    @art.destroy
    redirect_to arts_url, notice: 'Art was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art
      @art = Art.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def art_params
      params.require(:art).permit(:title, :body)
    end
end
