class Backoffice::CategoriesController < BackofficeController
  before_action :find_category_by_id, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new    
  end
  
  
  def create    
    @category = CategoryService.create(params_category)
    unless @category.errors.any?
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

  def destroy    
    if @category.destroy
      redirect_to backoffice_categories_path, notice: "#{@category.description} deletado com sucesso!"
    else      
      redirect_to backoffice_categories_path, notice: "Ocorreu um erro ao deletar #{@category.description}"
    end
  end


  private

  def find_category_by_id
    @category = Category.find(params[:id])
  end

  def params_category
    params.require(:category).permit(:description)
  end
  
end
