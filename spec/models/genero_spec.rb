describe Genero do

  it "Pode ser instanciado" do
    Genero.new.should be_an_instance_of(Genero)
  end

  it { should have_many(:filme) }

end
