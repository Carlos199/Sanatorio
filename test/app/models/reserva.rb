class Reserva < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico
  has_many :historia_pacientes
end
