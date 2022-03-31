class ContactsController < ApplicationController

  def index
   @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      respond_to do |format|
        format.html { redirect_to root_path,notice:"Data Berhasil ditambahkan !" }
      end
    else
      return 'gagal'; 
    end
  end
  def edit
    @contact = Contact.find(params[:id]) 
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      respond_to do |format|
        format.html { redirect_to root_path,notice: "Data berhasil diupdate" }
      end
    end 
  end

  def destroy
  @contact = Contact.find(params[:id]) 
    if @contact.destroy
      respond_to do |format|
        format.html { redirect_to root_path,notice:'Data Berhasil Dihapus' }
      end
    else 
      
    end  
  end

  private
    def contact_params #digunakan untuk mendefinisikan form yang dijinkan masuk kedalam database 
      params.require(:contact).permit(:name,:phone_number,:email);
    end

end
