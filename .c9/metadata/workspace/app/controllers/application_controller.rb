{"filter":false,"title":"application_controller.rb","tooltip":"/app/controllers/application_controller.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":21,"column":36},"end":{"row":21,"column":37},"action":"insert","lines":["g"],"id":35}],[{"start":{"row":21,"column":37},"end":{"row":21,"column":38},"action":"insert","lines":["n"],"id":36}],[{"start":{"row":21,"column":38},"end":{"row":21,"column":39},"action":"insert","lines":["u"],"id":37}],[{"start":{"row":21,"column":39},"end":{"row":21,"column":40},"action":"insert","lines":["p"],"id":38}],[{"start":{"row":21,"column":41},"end":{"row":21,"column":68},"action":"remove","lines":[", :object => flash[:errors]"],"id":39}],[{"start":{"row":20,"column":20},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":40},{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":21,"column":4},"end":{"row":29,"column":11},"action":"insert","lines":["respond_to do |format|","            ","            format.html","            ","            unless @user","                format.js { flash[:error] = [\"Invalid email\", \"Invalid password\"] }","            end","            ","        end"],"id":41}],[{"start":{"row":29,"column":11},"end":{"row":30,"column":0},"action":"insert","lines":["",""],"id":42},{"start":{"row":30,"column":0},"end":{"row":30,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":31,"column":4},"end":{"row":31,"column":42},"action":"remove","lines":["render(:partial => './layouts/signup')"],"id":43}],[{"start":{"row":31,"column":2},"end":{"row":31,"column":4},"action":"remove","lines":["  "],"id":44}],[{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"remove","lines":["  "],"id":45}],[{"start":{"row":30,"column":8},"end":{"row":31,"column":0},"action":"remove","lines":["",""],"id":46}],[{"start":{"row":23,"column":12},"end":{"row":27,"column":15},"action":"remove","lines":["format.html","            ","            unless @user","                format.js { flash[:error] = [\"Invalid email\", \"Invalid password\"] }","            end"],"id":47},{"start":{"row":23,"column":12},"end":{"row":23,"column":50},"action":"insert","lines":["render(:partial => './layouts/signup')"]}],[{"start":{"row":23,"column":12},"end":{"row":23,"column":50},"action":"remove","lines":["render(:partial => './layouts/signup')"],"id":48},{"start":{"row":23,"column":12},"end":{"row":23,"column":13},"action":"insert","lines":["f"]}],[{"start":{"row":23,"column":13},"end":{"row":23,"column":14},"action":"insert","lines":["o"],"id":49}],[{"start":{"row":23,"column":14},"end":{"row":23,"column":15},"action":"insert","lines":["r"],"id":50}],[{"start":{"row":23,"column":15},"end":{"row":23,"column":16},"action":"insert","lines":["m"],"id":51}],[{"start":{"row":23,"column":16},"end":{"row":23,"column":17},"action":"insert","lines":["a"],"id":52}],[{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"insert","lines":["t"],"id":53}],[{"start":{"row":23,"column":18},"end":{"row":23,"column":19},"action":"insert","lines":["."],"id":54}],[{"start":{"row":23,"column":19},"end":{"row":23,"column":20},"action":"insert","lines":["j"],"id":55}],[{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"insert","lines":["s"],"id":56}],[{"start":{"row":25,"column":6},"end":{"row":25,"column":8},"action":"remove","lines":["  "],"id":57}],[{"start":{"row":25,"column":4},"end":{"row":25,"column":6},"action":"remove","lines":["  "],"id":58}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":12},"action":"remove","lines":["  "],"id":59}],[{"start":{"row":23,"column":8},"end":{"row":23,"column":10},"action":"remove","lines":["  "],"id":60}],[{"start":{"row":23,"column":6},"end":{"row":23,"column":8},"action":"remove","lines":["  "],"id":61}],[{"start":{"row":23,"column":4},"end":{"row":23,"column":6},"action":"remove","lines":["  "],"id":62}],[{"start":{"row":23,"column":2},"end":{"row":23,"column":4},"action":"remove","lines":["  "],"id":63}],[{"start":{"row":23,"column":0},"end":{"row":23,"column":2},"action":"remove","lines":["  "],"id":64}],[{"start":{"row":22,"column":12},"end":{"row":23,"column":0},"action":"remove","lines":["",""],"id":65}],[{"start":{"row":22,"column":10},"end":{"row":22,"column":12},"action":"remove","lines":["  "],"id":66}],[{"start":{"row":22,"column":8},"end":{"row":22,"column":10},"action":"remove","lines":["  "],"id":67}],[{"start":{"row":22,"column":6},"end":{"row":22,"column":8},"action":"remove","lines":["  "],"id":68}],[{"start":{"row":22,"column":4},"end":{"row":22,"column":6},"action":"remove","lines":["  "],"id":69}],[{"start":{"row":22,"column":2},"end":{"row":22,"column":4},"action":"remove","lines":["  "],"id":70}],[{"start":{"row":22,"column":0},"end":{"row":22,"column":2},"action":"remove","lines":["  "],"id":71}],[{"start":{"row":21,"column":26},"end":{"row":22,"column":0},"action":"remove","lines":["",""],"id":72}],[{"start":{"row":21,"column":26},"end":{"row":22,"column":0},"action":"insert","lines":["",""],"id":73},{"start":{"row":22,"column":0},"end":{"row":22,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":22,"column":6},"end":{"row":23,"column":0},"action":"insert","lines":["",""],"id":74},{"start":{"row":23,"column":0},"end":{"row":23,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":20,"column":20},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":75},{"start":{"row":21,"column":0},"end":{"row":21,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":23,"column":6},"end":{"row":23,"column":7},"action":"insert","lines":["f"],"id":76}],[{"start":{"row":23,"column":7},"end":{"row":23,"column":8},"action":"insert","lines":["o"],"id":77}],[{"start":{"row":23,"column":8},"end":{"row":23,"column":9},"action":"insert","lines":["r"],"id":78}],[{"start":{"row":23,"column":9},"end":{"row":23,"column":10},"action":"insert","lines":["m"],"id":79}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":11},"action":"insert","lines":["a"],"id":80}],[{"start":{"row":23,"column":11},"end":{"row":23,"column":12},"action":"insert","lines":["t"],"id":81}],[{"start":{"row":23,"column":12},"end":{"row":23,"column":13},"action":"insert","lines":["."],"id":82}],[{"start":{"row":23,"column":13},"end":{"row":23,"column":14},"action":"insert","lines":["h"],"id":83}],[{"start":{"row":23,"column":14},"end":{"row":23,"column":15},"action":"insert","lines":["t"],"id":84}],[{"start":{"row":23,"column":15},"end":{"row":23,"column":16},"action":"insert","lines":["m"],"id":85}],[{"start":{"row":23,"column":16},"end":{"row":23,"column":17},"action":"insert","lines":["l"],"id":86}],[{"start":{"row":25,"column":10},"end":{"row":25,"column":11},"action":"remove","lines":[" "],"id":87}],[{"start":{"row":25,"column":8},"end":{"row":25,"column":10},"action":"remove","lines":["  "],"id":88}],[{"start":{"row":25,"column":6},"end":{"row":25,"column":8},"action":"remove","lines":["  "],"id":89}],[{"start":{"row":25,"column":4},"end":{"row":25,"column":6},"action":"remove","lines":["  "],"id":90}],[{"start":{"row":25,"column":2},"end":{"row":25,"column":4},"action":"remove","lines":["  "],"id":91}],[{"start":{"row":25,"column":0},"end":{"row":25,"column":2},"action":"remove","lines":["  "],"id":92}],[{"start":{"row":24,"column":15},"end":{"row":25,"column":1},"action":"remove","lines":[""," "],"id":93}],[{"start":{"row":23,"column":17},"end":{"row":24,"column":15},"action":"remove","lines":["","      format.js"],"id":94}],[{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"insert","lines":[" "],"id":95}],[{"start":{"row":23,"column":18},"end":{"row":23,"column":19},"action":"insert","lines":["{"],"id":96}],[{"start":{"row":23,"column":19},"end":{"row":23,"column":20},"action":"insert","lines":[" "],"id":97}],[{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"insert","lines":["p"],"id":98}],[{"start":{"row":23,"column":21},"end":{"row":23,"column":22},"action":"insert","lines":["a"],"id":99}],[{"start":{"row":23,"column":22},"end":{"row":23,"column":23},"action":"insert","lines":["r"],"id":100}],[{"start":{"row":23,"column":23},"end":{"row":23,"column":24},"action":"insert","lines":["t"],"id":101}],[{"start":{"row":23,"column":24},"end":{"row":23,"column":25},"action":"insert","lines":["i"],"id":102}],[{"start":{"row":23,"column":25},"end":{"row":23,"column":26},"action":"insert","lines":["a"],"id":103}],[{"start":{"row":23,"column":26},"end":{"row":23,"column":27},"action":"insert","lines":["l"],"id":104}],[{"start":{"row":23,"column":27},"end":{"row":23,"column":28},"action":"insert","lines":[":"],"id":105}],[{"start":{"row":23,"column":28},"end":{"row":23,"column":29},"action":"insert","lines":[" "],"id":106}],[{"start":{"row":23,"column":29},"end":{"row":23,"column":31},"action":"insert","lines":["''"],"id":107}],[{"start":{"row":23,"column":30},"end":{"row":23,"column":31},"action":"insert","lines":["l"],"id":108}],[{"start":{"row":23,"column":31},"end":{"row":23,"column":32},"action":"insert","lines":["a"],"id":109}],[{"start":{"row":23,"column":32},"end":{"row":23,"column":33},"action":"insert","lines":["y"],"id":110}],[{"start":{"row":23,"column":33},"end":{"row":23,"column":34},"action":"insert","lines":["o"],"id":111}],[{"start":{"row":23,"column":34},"end":{"row":23,"column":35},"action":"insert","lines":["u"],"id":112}],[{"start":{"row":23,"column":35},"end":{"row":23,"column":36},"action":"insert","lines":["t"],"id":113}],[{"start":{"row":23,"column":36},"end":{"row":23,"column":37},"action":"insert","lines":["s"],"id":114}],[{"start":{"row":23,"column":37},"end":{"row":23,"column":38},"action":"insert","lines":["/"],"id":115}],[{"start":{"row":23,"column":30},"end":{"row":23,"column":31},"action":"insert","lines":["."],"id":116}],[{"start":{"row":23,"column":31},"end":{"row":23,"column":32},"action":"insert","lines":["/"],"id":117}],[{"start":{"row":23,"column":40},"end":{"row":23,"column":41},"action":"insert","lines":["s"],"id":118}],[{"start":{"row":23,"column":41},"end":{"row":23,"column":42},"action":"insert","lines":["i"],"id":119}],[{"start":{"row":23,"column":42},"end":{"row":23,"column":43},"action":"insert","lines":["g"],"id":120}],[{"start":{"row":23,"column":43},"end":{"row":23,"column":44},"action":"insert","lines":["n"],"id":121}],[{"start":{"row":23,"column":44},"end":{"row":23,"column":45},"action":"insert","lines":["u"],"id":122}],[{"start":{"row":23,"column":45},"end":{"row":23,"column":46},"action":"insert","lines":["p"],"id":123}],[{"start":{"row":23,"column":47},"end":{"row":23,"column":48},"action":"insert","lines":[" "],"id":124}],[{"start":{"row":23,"column":48},"end":{"row":23,"column":49},"action":"insert","lines":["}"],"id":125}],[{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"insert","lines":["r"],"id":126}],[{"start":{"row":23,"column":21},"end":{"row":23,"column":22},"action":"insert","lines":["e"],"id":127}],[{"start":{"row":23,"column":22},"end":{"row":23,"column":23},"action":"insert","lines":["n"],"id":128}],[{"start":{"row":23,"column":23},"end":{"row":23,"column":24},"action":"insert","lines":["d"],"id":129}],[{"start":{"row":23,"column":24},"end":{"row":23,"column":25},"action":"insert","lines":["e"],"id":130}],[{"start":{"row":23,"column":25},"end":{"row":23,"column":26},"action":"insert","lines":["r"],"id":131}],[{"start":{"row":23,"column":26},"end":{"row":23,"column":27},"action":"insert","lines":[" "],"id":132}],[{"start":{"row":23,"column":13},"end":{"row":23,"column":56},"action":"remove","lines":["html { render partial: './layouts/signup' }"],"id":134},{"start":{"row":23,"column":13},"end":{"row":23,"column":14},"action":"insert","lines":["j"]}],[{"start":{"row":23,"column":14},"end":{"row":23,"column":15},"action":"insert","lines":["s"],"id":135}],[{"start":{"row":18,"column":5},"end":{"row":26,"column":5},"action":"remove","lines":["","  ","  def display_signup","    ","    respond_to do |format|","      format.js","    end","        ","  end"],"id":141}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":18,"column":5},"end":{"row":18,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1488317458860,"hash":"fa4e1f4b7b0de7ee48a8417a799e81f045fd1e0e"}