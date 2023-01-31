class TrecoMainController < ApplicationController
  
  
##

def treco_record_list
    @tranings = Traning.all

    #ログイン中のユーザーデーターのみ表示する記述
    #if user_signed_in?

    #Userテーブルの左外部にTraningテーブルを結合
    #@traning = User.left_joins(:traning).where(name: current_user.name).order(created_at: :desc).limit(7)



@traning = Traning.limit(5).where(user_id: current_user.id).order(id: "DESC")

     #@user = User.find(params[:id])
# ===============追加==============
    #@traning = @user.tranings

    #@traning = Traning.order(created_at: :desc).limit(7)
    #@traning = User.where(name: current_user.name).order(created_at: :desc).limit(7)
    #end

   end

  def search
    @tranings = Traning.all
    @traning = Traning.new(traning_params)
    if @traning.created_at.present?
      @traning = Traning.where(created_at: "#{@traning.created_at}".in_time_zone.all_day).order(id: "DESC")
    else
      @traning = Traning.none
    end
      render :treco_record_list
  end


  def traning_params
   params.require(:traning).permit(:bodypart_menu,:weight_1set,:weight_2set,:weight_3set,:weight_4set,
    :weight_5set,:weight_6set,:weight_7set,:reps_1set,:reps_2set,:reps_3set,:reps_4set,
    :reps_5set,:reps_6set,:reps_7set,:created_at)
  end

  def treco_main_select
  end

  def treco_others
  end

  def treco_record
    @tranings = Traning.new

    #1つ前のページをセッションに保存する
    #session[:previous_url] = request.referer 
  end

  def treco_record_list2
    @tranings = Traning.all
    #render :treco_record_list
  end

def new
  end

def create
  @traning = Traning.new(tranings_params)

  @traning.user_id = current_user.id 
  
  @traning.save

  redirect_to treco_main_treco_record_list_path 

  #session[:previous_url] ←#セッションに保存されたページにリダイレクトするコード
  #redirect_back(fallback_location: treco_main_treco_record_path)
end

private
def tranings_params
  params.require(:traning).permit(:bodypart_menu,:weight_1set,:weight_2set,:weight_3set,:weight_4set,
    :weight_5set,:weight_6set,:weight_7set,:reps_1set,:reps_2set,:reps_3set,:reps_4set,
    :reps_5set,:reps_6set,:reps_7set)#.merge(user_id: current_user.id)
end

end