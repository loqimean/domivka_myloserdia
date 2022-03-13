class Account::SituationPhotosController < Account::AccountController
  def index
    @situation_photos = SituationPhoto.ordered.page(params[:page])
  end

  def show
    @situation_photo = resource
  end

  def new
    @situation_photo = SituationPhoto.new
  end

  def edit
    @situation_photo = resource
  end

  def create
    @situation_photo = SituationPhoto.new(situation_photo_params)

    if @situation_photo.save
      redirect_to account_situation_photo_url(@situation_photo), notice: 'Фото було успішно створено'
    else
      flash.now[:error] = 'Сталась помилка при створенні фото'

      render :new, status: :unprocessable_entity
    end
  end

  def update
    @situation_photo = resource

    if @situation_photo.update(situation_photo_params)
      redirect_to account_situation_photo_url(@situation_photo), notice: 'Фото було успішно оновлено'
    else
      flash.now[:error] = 'Сталась помилка при оновленні фото'

      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @situation_photo = resource

    @situation_photo.destroy

    redirect_to account_situation_photos_url, notice: 'Фото було успішно видалено'
  end

  private
    def resource
      SituationPhoto.find(params[:id])
    end

    def situation_photo_params
      params.require(:situation_photo).permit(:photo)
    end
end
