#
# = Ipgeobase
# 
# Интерфейс к базе на http://ipgeobase.ru. База знает только города России.
# 
class Ipgeobase
  ## included modules & attr_*
  
  class IpEntry; end
  
  ## associations
  ## plugins
  ## named_scopes
  ## validations
  ## callbacks
  ## class methods
  extend ::IpgeobaseExt
  protected
  @@path = Rails.root + "/db/ipgeobase/"
  
  def self.database
    unless File.exists?(@@path + "cidr_ru_master_index.db")
      raise "Couldn't load database at path #{File.expand_path(@@path)}. You should update"
    end
    @database ||= load_database(@@path)
  end
  
  def self.lookup(ip)
    internal_lookup(database, ip)
  end
  
  # Надо пользоваться этим методом для апдейта базы с ipgeobase.ru
  def self.update
    FileUtils.mkdir_p(@@path)
    `(cd #{@@path} && 
    curl -O http://ipgeobase.ru/files/db/Main/db_files.tar.gz &&
    tar zxvf db_files.tar.gz && 
    rm db_files.tar.gz &&
    cat cidr_ru_master_index.db | iconv -f cp1251 -t utf8 > a && mv a cidr_ru_master_index.db &&
    cat cidr_ru_slave_index.db | iconv -f cp1251 -t utf8 > a && mv a cidr_ru_slave_index.db &&
    rm cidr_ru_block.txt
    )`
  end
  
  
  public
  
  
  # Возвращает объект City или Москву. Если ip == 127.0.0.1, возвращается москва безусловно
  def self.lookup_city(ip)
    return City.find_by_name('Москва') if ip == "127.0.0.1"
    city_name = lookup(ip)
    city_name && City.find_by_name(city_name)
  end

  ## public methods
  ## private methods  
end
