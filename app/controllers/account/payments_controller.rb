class Account::PaymentsController < Account::AccountController
  def index
    @payments = Payment.ordered.page(params[:page])
  end

  def new
    @payment = Payment.new
  end

  def edit
    @payment = resource
  end

  def create
    @payment = Payment.new(payment_params)

    if @payment.save
      redirect_to account_payments_path, notice: 'Пожертва була успішно створена'
    else
      flash.now[:error] = 'Сталась помилка при створенні пожертви'

      render :new, status: :unprocessable_entity
    end
  end

  def update
    @payment = resource

    if @payment.update(payment_params)
      redirect_to account_payments_path, notice: 'Пожертва була успішно оновлена'
    else
      flash.now[:error] = 'Сталась помилка при оновленні пожертви'

      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @payment = resource

    @payment.destroy

    redirect_to account_payments_url, notice: 'Пожертва була успішно видалена'
  end

  private
    def resource
      Payment.find(params[:id])
    end

    def payment_params
      params.require(:payment).permit(:sum, :name)
    end
end
