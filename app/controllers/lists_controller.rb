class ListsController < ApplicationController
  
  def new
    # View用のインスタンス変数に、空のModelオブジェクトを生成して格納する。 ＠でインスタンス変数にし、Viewに渡せるようにする
    @list = List.new 
  end

  def create # データ作成用のアクション。Viewは無いので＠は不要=ローカル変数
    # データを（セキュアに）受け取り、新規登録するためのインスタンス作成
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  private
  
  def list_params #ストロングパラメータ　マスアサインメント脆弱性の対策
    params.require(:list).permit(:title, :body)
  end
end
