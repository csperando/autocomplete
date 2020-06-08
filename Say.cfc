
component extends="controller"{

  function init(){
    //protectFromForgery();
  }

  public function hello() {
    cfparam(name="output" default="");
  }

  public function autocompleteTest() {
    cfparam(name="output" default="");
  }

  public function getStuff() {
    cfparam(name="input" default="");

    stuffQuery = queryExecute(
      "SELECT TOP 10 cityState
      FROM toyp_cityStates
      WHERE cityState LIKE '%#input#%'",
      {},
      {datasource='Test'}
    );
  }




  public function goodbye() {
    // function for goodbye view
    query1 = queryExecute(
      "SELECT TOP 10 cityState
      FROM toyp_cityStates",
      {},
      {datasource='Test'}
    );
  }




  public function markets() {
    cfparam(name="symbol" default="AAPL");
  }




  public function marketInfo() {
    cfparam(name="s" default="");
    cfparam(name="p" default="");
    cfparam(name="t" default="");
    cfparam(name="v" default="");



    insertTradeInfo = queryExecute(
      "INSERT INTO trades (symbol, price, time, volume)
      VALUES (:symbol, :price, :time, :volume)",
      {symbol=#s#, price=#p#, time=#t#, volume=#v#},
      {dataSource="TEST"})

    //location("/index.cfm/say/markets?symbol=#s#");
  }

}
