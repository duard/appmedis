class Marca < ActiveRecord::Base
  attr_accessible :descricao

  validates_presence_of :descricao, on: :create, message: "can't be blank"
end
