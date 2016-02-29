
RSpec.describe ComparacaosController, :type => :controller do
  describe "ehAnagrama" do
    it "retorna true para um anagrama" do
      s1 = "roma"
      s2 = "amor"
      @controller = ComparacaosController.new
      @controller.instance_eval{ ehAnagrama(s1, s2)}
      10.times { expect(@controller.instance_eval{ ehAnagrama(s1, s2)}).to eq(true) }
    end

    it "retorna false para nao anagramas" do
      s1 = "roma"
      s2 = "aaaa"
      @controller = ComparacaosController.new
      @controller.instance_eval{ ehAnagrama(s1, s2)}
      10.times { expect(@controller.instance_eval{ ehAnagrama(s1, s2)}).to eq(false) }
    end

    it "retira acentos" do
      s1 = "romã"
      s2 = "amor"
      @controller = ComparacaosController.new
      @controller.instance_eval{ ehAnagrama(s1, s2)}
      10.times { expect(@controller.instance_eval{ ehAnagrama(s1, s2)}).to eq(true) }
    end
  end
end
