require 'i18n'
class ComparacaosController < ApplicationController
  def new
  end

  def index
  	@comparacaos = Comparacao.all
  end

  def create
    	@post = Comparacao.new(post_params)                         
  	@post.anagrama = ehAnagrama(@post.string1, @post.string2) 
  	@post.save                                             
  	redirect_to @post                                     
  end

  def show
  	@post = Comparacao.find(params[:id])
  end

  private
  def post_params
  	params.require(:post).permit(:string1, :string2, :anagrama)
  end
  
  def ehAnagrama(string1, string2)
    string1 = I18n.transliterate(string1.tr('ẽẼ','eE')) 
    string2 = I18n.transliterate(string2.tr('ẽẼ','eE')) 
    string1.downcase.tr('^0-9a-z', '').split("").sort == string2.downcase.tr('^0-9a-z', '').split("").sort 
  end                                                                                                  
end
