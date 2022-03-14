class Account::InvoicesController < Account::AccountController
  def index
    @invoices = Invoice.ordered.page(params[:page])
  end

  def new
    @invoice = Invoice.new
  end

  def edit
    @invoice = resource
  end

  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      redirect_to account_invoices_path, notice: 'Рахунок-фактура був успішно створений'
    else
      flash.now[:error] = 'Сталась помилка при створенні рахунока-фактури'

      render :new, status: :unprocessable_entity
    end
  end

  def update
    @invoice = resource

    if @invoice.update(invoice_params)
      redirect_to account_invoices_path, notice: 'Рахунок-фактура був успішно оновлений'
    else
      flash.now[:error] = 'Сталась помилка при оновленні рахунка-фактури'

      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @invoice = resource

    @invoice.destroy

    redirect_to account_invoices_url, notice: 'Рахунок-фактура був успішно видалений'
  end

  private
    def resource
      Invoice.find(params[:id])
    end

    def invoice_params
      params.require(:invoice).permit(:file)
    end
end
