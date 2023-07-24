class BooksController < ApplicationController

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @book = Book.new(books_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @book.save
      redirect_to action: :show, id: @book.id
    else
      render :index
    end
  end

  def index
    render 'books/index'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(books_params)
       redirect_to show_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    pp "aaa"
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

    private
  def books_params
    params.require(:book).permit(:title, :body)
  end
end