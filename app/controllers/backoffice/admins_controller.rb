class Backoffice::AdminsController < BackofficeController
before_action :find_admin_by_id, only: [:edit, :update, :destroy]
after_action :verify_authorized, only: [:new, :destroy]
after_action :verify_policy_scoped, only: :index

  def index
    #@admins = Admin.all
    @admins = policy_scope(Admin)
  end

  def new
    @admin = Admin.new
    authorize @admin
  end

  def create 
    @admin = Admin.new(params_admin)
    if @admin.save      
      redirect_to backoffice_admins_path, notice: "Administrador #{@admin.email} cadastrado com sucesso!"
    else
      render :new, notice: 'ocorreu um erro'  
    end        
  end

  def edit 
  end 

  def update 

    if params[:admin][:password].blank? && params[:admin][:password_confirmation].blank?
      params[:admin].delete(:password)
      params[:admin].delete(:password_confirmation)
    end

    if  @admin.update(params_admin)
      redirect_to backoffice_admins_path, notice: "Administrador #{@admin.email} editado com sucesso!"
    else
      render :edit, notice: 'ocorreu um erro'  
    end
  end

  def destroy
    
    if @admin.destroy
      redirect_to backoffice_admins_path, notice: "Administrador #{@admin.email} deletado com sucesso!"
    else      
      redirect_to backoffice_admins_path, notice: "Ocorreu um erro ao deletar o administrador #{@admin.email}"
    end
  end
  

  private 
  def find_admin_by_id
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end  
   
end
