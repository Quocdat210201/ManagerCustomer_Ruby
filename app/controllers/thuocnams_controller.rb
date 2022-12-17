class ThuocnamsController < ApplicationController
  before_action :set_thuocnam, only: %i[ show edit update destroy ]

  # GET /thuocnams or /thuocnams.json
  def index
    @thuocnams = Thuocnam.search(params[:term])
  end

  # GET /thuocnams/1 or /thuocnams/1.json
  def show
  end

  # GET /thuocnams/new
  def new
    @thuocnam = Thuocnam.new
  end

  # GET /thuocnams/1/edit
  def edit
  end

  # POST /thuocnams or /thuocnams.json
  def create
    @thuocnam = Thuocnam.new(thuocnam_params)

    respond_to do |format|
      if @thuocnam.save
        format.html { redirect_to thuocnam_url(@thuocnam), notice: "Thêm thành công!" }
        format.json { render :show, status: :created, location: @thuocnam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thuocnam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thuocnams/1 or /thuocnams/1.json
  def update
    respond_to do |format|
      if @thuocnam.update(thuocnam_params)
        format.html { redirect_to thuocnam_url(@thuocnam), notice: "Cập nhật thành công" }
        format.json { render :show, status: :ok, location: @thuocnam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thuocnam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thuocnams/1 or /thuocnams/1.json
  def destroy
    @thuocnam.destroy

    respond_to do |format|
      format.html { redirect_to thuocnams_url, notice: "Xóa thành công!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thuocnam
      @thuocnam = Thuocnam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thuocnam_params
      params.require(:thuocnam).permit(:term, :stt, :ten, :dacdiem, :maula, :duoctinh, :luuysudung, :noitrong)
    end
end
