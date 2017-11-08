# == Schema Information
#
# Table name: insumos
#
#  id                 :integer          not null, primary key
#  descripcion        :string(255)
#  precio_compra      :integer
#  precio_venta       :integer
#  stock              :integer
#  stock_minimo       :integer
#  unidades_medida_id :integer
#  proveedore_id      :integer
#  tipo_iva_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Insumo < ApplicationRecord
  belongs_to :unidades_medida
  belongs_to :proveedore
  belongs_to :tipo_iva
 
  validates :descripcion, presence: true
  
end
