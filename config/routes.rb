Rails.application.routes.draw do
  resources "cocktails", only: [ :index, :new, :create, :show ] do
    resources "doses", only: [ :new, :create ]
  end
  resources "doses", only: [ :destroy ]
  resources "ingredient", only: [ :show ]

  root to: "cocktails#index"
end
