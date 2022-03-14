class Account::PartnersController < Account::AccountController
  def index
    @partners = Partner.ordered.page(params[:page])
  end

  def new
    @partner = Partner.new
  end

  def edit
    @partner = resource
  end

  def create
    @partner = Partner.new(partner_params)

    if @partner.save
      redirect_to account_partners_path, notice: 'Рахунок-фактура був успішно створений'
    else
      flash.now[:error] = 'Сталась помилка при створенні рахунока-фактури'

      render :new, status: :unprocessable_entity
    end
  end

  def update
    @partner = resource

    if @partner.update(partner_params)
      redirect_to account_partners_path, notice: 'Рахунок-фактура був успішно оновлений'
    else
      flash.now[:error] = 'Сталась помилка при оновленні рахунка-фактури'

      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @partner = resource

    @partner.destroy

    redirect_to account_partners_url, notice: 'Рахунок-фактура був успішно видалений'
  end

  private
    def resource
      Partner.find(params[:id])
    end

    def partner_params
      params.require(:partner).permit(:logo, :web_site_url)
    end
end
