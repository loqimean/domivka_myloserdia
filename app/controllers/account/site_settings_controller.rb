class Account::SiteSettingsController < Account::AccountController
  def edit
    @site_settings = resource
  end

  def update
    @site_settings = resource

    if @site_settings.update(site_settings_params)
      redirect_to account_root_path, notice: 'Налаштування  успішно оновлені'
    else
      flash.now[:error] = 'Сталася помилка при оновленні налаштувань'

      render :edit, status: :unprocessable_entity
    end
  end

  private

  def resource
    SiteSetting.find(params[:id])
  end

  def site_settings_params
    params.require(:site_setting).permit(:uk_idea_of_project, :en_idea_of_project,
                                         :main_photo, :uk_address, :en_address,
                                         :uk_payment_details, :en_payment_details,
                                         :email, :facebook_url, :instagram_url,
                                         :telegram_url, :phone)
  end
end
