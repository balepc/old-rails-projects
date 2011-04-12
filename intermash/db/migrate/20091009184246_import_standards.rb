class ImportStandards < ActiveRecord::Migration
  def self.up
    
    Item.all.each do |item|
      item.standards.clear
    end
    
    Standard.destroy_all
    
    /#
    ^\s([^\s].*)
    group = Standard.create(:name=>"\1", :is_group=>true)\ngroup.save
    
    ^\s\s([^\s].*)
    standard = Standard.create(:name=>"\1", :standard=>group)\nstandard.save
    #/
    
    group = Standard.create(:name=>"СТАНДАРТЫ - ASTM", :is_group=>true)
    group.save
    standard = Standard.create(:name=>"ASTM D 56", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 86", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 87", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 91", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 92", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 93", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 97", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 113", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 130", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 156", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 189", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 217", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 240", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 287", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 323", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 381", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 445", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 446", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 473", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 482", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 483", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 524", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 525", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 611", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 613", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 664", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 873", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 892", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 893", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 909", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 937", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 943", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 972", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1019", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1092", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1159", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1160", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1177", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1209", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1264", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1267", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1298", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1319", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1321", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1322", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1401", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1500", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1544", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1552", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1655", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1657", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1742", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1744", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1754", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1796", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1837", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 1838", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2158", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2171", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2274", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2384", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2386", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2398", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2420", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2440", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2500", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2595", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2622", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2624", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2699", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2700", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2784", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2872", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2878", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2887", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2892", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2893", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2896", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 2983", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3227", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3230", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3241", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3242", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3278", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3606", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3828", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3829", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 3948", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4052", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4053", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4206", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4239", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4294", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4310", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4377", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4530", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4629", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4636", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4684", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4815", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4928", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4929", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4950", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4951", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 4953", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5001", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5002", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5016", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5133", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5184", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5185", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5191", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5236", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5291", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5293", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5307", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5373", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5386", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5441", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5453", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5580", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5599", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5622", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5800", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5845", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5901", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 5968", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6074", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6079", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6082", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6158", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6277", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6304", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6371", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6378", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 6667", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM D 7153", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM Е 28", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ASTM Е 100", :standard=>group)
    standard.save
    group = Standard.create(:name=>"СТАНДАРТЫ - EN", :is_group=>true)
    group.save
    standard = Standard.create(:name=>"EN 5", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 12", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 41", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 116", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 228", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 238", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 1427", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 1557", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 2160", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 3675", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 5165", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 6245", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 8754", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 10370", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 12156", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 12177", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 12185", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 12205", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 12937", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 13016", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 13132", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 13736", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 20846", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 22719", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 23015", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"EN 25163", :standard=>group)
    standard.save
    group = Standard.create(:name=>"СТАНДАРТЫ - ISO", :is_group=>true)
    group.save
    standard = Standard.create(:name=>"ISO 1928", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 2137", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 2160", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 2592", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 2719", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 2977", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3007", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3013", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3014", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3015", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3016", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3104", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3405", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3675", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3679", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3680", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3735", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3841", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 3993", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 4260", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 4263", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 4625", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 4630", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 5163", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 5164", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 5165", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 6249", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 6251", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 6271", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 6614", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 6616", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 7536", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 8754", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 9038", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 9262", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 10370", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 12156", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 12205", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 13736", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 13757", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 14596", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ISO 20846", :standard=>group)
    standard.save
    group = Standard.create(:name=>"СТАНДАРТЫ - IP", :is_group=>true)
    group.save
    standard = Standard.create(:name=>"IP 13", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 15", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 16", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 33", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 34", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 36", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 40", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 49", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 50", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 53", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 55", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 57", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 58", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 69", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 71", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 75", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 80", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 119", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 123", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 132", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 138", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 145", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 146", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 154", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 160", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 167", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 170", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 183", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 183", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 191", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 195", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 196", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 215", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 219", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 227", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 235", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 243", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 267", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 303", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 309", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 323", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 386", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 481", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 529", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"IP 2542", :standard=>group)
    standard.save
    group = Standard.create(:name=>"СТАНДАРТЫ - DIN", :is_group=>true)
    group.save
    standard = Standard.create(:name=>"DIN 41", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 5033", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 6162", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 6174", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51394", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51411", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51421", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51428", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51551", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51562", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51566", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51570", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51578", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51579", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51580", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51586", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51587", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51599", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51751", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51754", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51757", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51758", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51759", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51780", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51789", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51793", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51799", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51804", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 51900", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 52010", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 52012", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"DIN 52013", :standard=>group)
    standard.save
    group = Standard.create(:name=>"СТАНДАРТЫ - ГОСТ", :is_group=>true)
    group.save
    standard = Standard.create(:name=>"ГОСТ 33", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 511", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 1461", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 1567", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 1756", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 2177", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 3122", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 3338", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 4039", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 4333", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 4338", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 5066", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 5346", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 6356", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 8226", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 8489", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 11011", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 11065", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 11506", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 11507", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 19932", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 20284", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 20287", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 22254", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 25771", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 26950", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 51105", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 51866", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 52050", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"ГОСТ 52368", :standard=>group)
    standard.save
    group = Standard.create(:name=>"СТАНДАРТЫ - FTM", :is_group=>true)
    group.save
    standard = Standard.create(:name=>"FTM 791/322", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/351", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/1402", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/3201", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/3211", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/3213", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/3252", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/3352", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/3354", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/5307", :standard=>group)
    standard.save
    standard = Standard.create(:name=>"FTM 791/5308", :standard=>group)
    standard.save
    
    #others
    standard = Standard.create(:name=>"SAE J300")
    standard.save
    standard = Standard.create(:name=>"CEC L18A/30")
    standard.save
    standard = Standard.create(:name=>"GPA 2140")
    standard.save
    standard = Standard.create(:name=>"DefStan 91-91")
    standard.save
    standard = Standard.create(:name=>"AOCS Cc13e")
    standard.save
    standard = Standard.create(:name=>"Ph EUR")
    standard.save
  end
  
  def self.down
    Standard.destroy_all
  end
end
