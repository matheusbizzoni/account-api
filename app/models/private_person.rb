class PrivatePerson < Client
  validates_cpf :cpf_or_cnpj
  validates :birthdate, presence: true

  before_save :set_private_person_type

  private

  def set_private_person_type
    self.client_type = :private
  end
end
