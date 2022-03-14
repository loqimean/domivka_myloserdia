class Account::ActivityPhotosController < Account::AccountController
  def index
    @activity_photos = ActivityPhoto.ordered.page(params[:page])
  end

  def show
    @activity_photo = resource
  end

  def new
    @activity_photo = ActivityPhoto.new
  end

  def edit
    @activity_photo = resource
  end

  def create
    @activity_photo = ActivityPhoto.new(activity_photo_params)

    if @activity_photo.save
      redirect_to account_activity_photo_url(@activity_photo), notice: 'Фото було успішно створено'
    else
      flash.now[:error] = 'Сталась помилка при створенні фото'

      render :new, status: :unprocessable_entity
    end
  end

  def update
    @activity_photo = resource

    if @activity_photo.update(activity_photo_params)
      redirect_to account_activity_photo_url(@activity_photo), notice: 'Фото було успішно оновлено'
    else
      flash.now[:error] = 'Сталась помилка при оновленні фото'

      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @activity_photo = resource

    @activity_photo.destroy

    redirect_to account_activity_photos_url, notice: 'Фото було успішно видалено'
  end

  private
    def resource
      ActivityPhoto.find(params[:id])
    end

    def activity_photo_params
      params.require(:activity_photo).permit(:photo)
    end
end
