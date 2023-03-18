Dir[File.join(File.dirname(__FILE__), "../../lib/pages/*/*_page.rb")].each { |file| require file }

module PageObjects   

  require_relative '../../lib/pages/cadastro/login'

  def amazonLoginPage
    @amazonLoginPage ||= AmazonLoginPage.new
  end  

end