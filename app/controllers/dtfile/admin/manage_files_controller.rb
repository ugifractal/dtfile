class Dtfile::Admin::ManageFilesController < Admin::AdminBaseController
  # GET /categories
  # GET /categories.xml
  def index
    @files = Dtfile::DataFile.paginate(:per_page => 15, :page => params[:page], :order => 'created_at DESC')
  end


  # GET /categories/new
  # GET /categories/new.xml
  def new
    @data_file = Dtfile::DataFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

 
  # POST /categories
  # POST /categories.xml
  def create
    @data_file = Dtfile::DataFile.new(params[:data_file])
    if @data_file.save
      redirect_to "/dtfile/admin/manage_files"
    else
      render :action => 'new'
    end
  end


  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @file = Dtfile::DataFile.find(params[:id])
    @file.destroy

    respond_to do |format|
      format.html { redirect_to("/dtfile/admin/manage_files") }
      format.xml  { head :ok }
    end
  end
end
