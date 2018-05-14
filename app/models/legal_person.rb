class LegalPerson < Client
  validates_cnpj :cpf_or_cnpj
  validates :fantasy_name, presence: true

  before_create :set_legal_person_type

  private

  def set_legal_person_type
    client_type = :legal
  end
end
