Rails.application.routes.draw do
  get 'record/index'
  get 'treco_diet2/treco_diet_select'
  get 'treco_bulkup2/treco_bulkup_select'
#トレーニング記録
  get 'treco_main/treco_record'
  get 'treco_main/new'
  get 'treco_main/index'
  #post 'treco_main/new'
  post 'treco_main/index'
  get 'treco_main/create'
  post 'treco_main/create'
  get 'treco_main/search'
  post 'treco_main/search'

#トレーニング記録一覧（日付）
  get 'treco_main/treco_record_list'
#トレーニング記録一覧（詳細）
  get 'treco_main/treco_record_list2'  
#ホーム画面選択（ダイエット・バルクアップ）
  get 'treco_main/treco_main_select'
  get 'treco_main/treco_others'
  get 'user_managementse/treco_diet_main2'
#トレーニング部位選択
  get 'treco_diet2/treco_diet_reg'
  get 'treco_diet2/treco_diet_hip'
  get 'treco_diet2/treco_diet_back'
  get 'treco_diet2/treco_diet_chest'
  get 'treco_diet2/treco_diet_arm'
  get 'treco_diet2/treco_diet_shoulder'
  get 'treco_diet2/treco_diet_stomach'

  get 'treco_bulkup2/treco_bulkup_reg'
  get 'treco_bulkup2/treco_bulkup_hip'
  get 'treco_bulkup2/treco_bulkup_back'
  get 'treco_bulkup2/treco_bulkup_chest'
  get 'treco_bulkup2/treco_bulkup_arm'
  get 'treco_bulkup2/treco_bulkup_shoulder'
  get 'treco_bulkup2/treco_bulkup_stomach'
#脚
  get 'treco_diet2/treco_diet_regpress'
  get 'treco_diet2/treco_diet_regpress2'
  get 'treco_diet2/treco_diet_ad'
  get 'treco_diet2/treco_diet_regextension'
  get 'treco_diet2/treco_diet_regcarl'

  get 'treco_bulkup2/treco_bulkup_regpress'
  get 'treco_bulkup2/treco_bulkup_regpress2'
  get 'treco_bulkup2/treco_bulkup_ad'
  get 'treco_bulkup2/treco_bulkup_regextension'
  get 'treco_bulkup2/treco_bulkup_regcarl'
#お尻
  get 'treco_diet2/treco_diet_ab'

  get 'treco_bulkup2/treco_bulkup_ab'
#背中
  get 'treco_diet2/treco_diet_latpull'
  get 'treco_diet2/treco_diet_latpull2'
  get 'treco_diet2/treco_diet_seatedrow'

  get 'treco_bulkup2/treco_bulkup_latpull'
  get 'treco_bulkup2/treco_bulkup_latpull2'
  get 'treco_bulkup2/treco_bulkup_seatedrow'
#胸
  get 'treco_diet2/treco_diet_chestpress'
  get 'treco_diet2/treco_diet_incline_chestpress'

  get 'treco_bulkup2/treco_bulkup_chestpress'
  get 'treco_bulkup2/treco_bulkup_incline_chestpress'
#腕
  get 'treco_diet2/treco_diet_bicepscurl'

  get 'treco_bulkup2/treco_bulkup_bicepscurl'
#肩
  get 'treco_diet2/treco_diet_shoulderpress'
  get 'treco_diet2/treco_diet_reardelt'

  get 'treco_bulkup2/treco_bulkup_shoulderpress'
  get 'treco_bulkup2/treco_bulkup_reardelt'
#お腹
  get 'treco_diet2/treco_diet_ab_crunch'
  get 'treco_diet2/treco_diet_torso_rotation'
  get 'treco_diet2/treco_diet_decline_situp'

  get 'treco_bulkup2/treco_bulkup_ab_crunch'
  get 'treco_bulkup2/treco_bulkup_torso_rotation'
  get 'treco_bulkup2/treco_bulkup_decline_situp'

  devise_for :users

  resources :treco_main, only: [:create, :new]
  
  resources :treco_main
  resources :treco_diet2

end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"　
