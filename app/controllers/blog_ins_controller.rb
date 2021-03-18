class BlogInsController < ApplicationController
  before_action :set_blog_in, only: %i[ show edit update destroy ]

  # GET /blog_ins or /blog_ins.json
  def index
    @blog_ins = BlogIn.all
  end

  # GET /blog_ins/1 or /blog_ins/1.json
  def show
    @comments = @blog_in.comments
    @comment = @blog_in.comments.build
  end

  # GET /blog_ins/new
  def new
    @blog_in = BlogIn.new
  end

  # GET /blog_ins/1/edit
  def edit
  end

  # POST /blog_ins or /blog_ins.json
  def create
    @blog_in = BlogIn.new(blog_in_params)

    respond_to do |format|
      if @blog_in.save
        format.html { redirect_to @blog_in, notice: "Blog in was successfully created." }
        format.json { render :show, status: :created, location: @blog_in }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_ins/1 or /blog_ins/1.json
  def update
    respond_to do |format|
      if @blog_in.update(blog_in_params)
        format.html { redirect_to @blog_in, notice: "Blog in was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_in }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_ins/1 or /blog_ins/1.json
  def destroy
    @blog_in.destroy
    respond_to do |format|
      format.html { redirect_to blog_ins_url, notice: "Blog in was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_in
      @blog_in = BlogIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_in_params
      params.require(:blog_in).permit(:title, :content)
    end
end
