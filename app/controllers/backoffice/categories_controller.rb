class Backoffice::CategoriesController < BackofficeController
  before_action :find_category_by_id, only: [:edit, :update]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new    
  end
  
  
  def create    
    @category = Category.new(params_category)
    if @category.save
      redirect_to backoffice_categories_path, notice: "categoria #{@category.description} cadastrada com sucesso!"
    else
      render :new, notice: 'ocorreu um erro'    
    end
  end

  def update     
    if  @category.update(params_category)
      redirect_to backoffice_categories_path, notice: "categoria #{@category.description} cadastrada com sucesso!"
    else
      render :edit, notice: 'ocorreu um erro'  
    end
  end  

  def edit           
  end


  private

  def find_category_by_id
    @category = Category.find(params[:id])
  end

  def params_category
    params.require(:category).permit(:description)
  end
  
end
