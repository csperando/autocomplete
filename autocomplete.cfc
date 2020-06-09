
component extends="controller"{



  public function autocomplete() {
    
  }



  public function results() {
    cfparam(name="input" default="");

    resultsQuery = queryExecute(
      "SELECT TOP 10 cityState
      FROM toyp_cityStates
      WHERE cityState LIKE '%#input#%'",
      {},
      {datasource='Test'}
    );
  }



}
