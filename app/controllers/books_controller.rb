class BooksController < ApplicationController
    
  #memanggil user_signed_in? dari applicationcontroller
  before_action :user_signed_in?
  #sebelum kita menjalankan 7 action harus login terlebih dahulu   

  def index
  	@books = Book.all
  end

  def iseng
  	redirect_to action: 'index'
  end

    def show
      id = params[:id]
      @book = Book.find(id)
    end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new (resource_params)
    if @book.save
      redirect_to books_path
    else 
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

 def update
    @book = Book.find(params[:id])
    @book.update(resource_params)
    flash[:notice]  = "Book has been updated "
    redirect_to books_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
   flash[:notice]  = 'Book has been deleted'
    redirect_to books_path
  end 
  
    #method yg hanya dipanggil dari class itu sendiri
    private
    #memperbolehkan kita mengambil nilai yang berasal dari form yang kita punya
    def resource_params
      params.require(:book).permit(:title, :about, :page, :price, :author_id)
    end

end

