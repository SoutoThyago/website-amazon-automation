Dir[File.join(File.dirname(__FILE__), "../../lib/pages/*/*_page.rb")].each { |file| require file }

module PageObjects   

  require_relative '../../lib/pages/cadastro/login'
  require_relative '../../lib/pages/cadastro/profile'
  require_relative '../../lib/pages/cadastro/products'

  def amazonLoginPage
    @amazonLoginPage ||= AmazonLoginPage.new
  end  

  def amazonProfilePage
    @amazonProfilePage ||= AmazonProfilePage.new
  end

  def amazonProductsPage
    @amazonProductsPage ||= AmazonProductsPage.new
  end

end