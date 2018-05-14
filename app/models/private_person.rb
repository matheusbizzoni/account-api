class PrivatePerson < Client
  validates_cpf :cpf_or_cnpj
  validates :birthdate, presence: true

  before_create :set_private_person_type

  private

  def set_private_person_type
    client_type = :private
  end
end
