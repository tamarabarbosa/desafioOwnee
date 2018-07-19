describe Filme do

  it "Pode ser instanciado" do
    Filme.new.should be_an_instance_of(Filme)
  end

  it { should belong_to(:genero) }

end
