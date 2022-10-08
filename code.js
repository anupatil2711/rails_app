let request = {
    method: "GET",
    mode: 'no-cors',
    headers: {
      'Content-Type': "application/json",
      'X-Token': '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'
    }
  };

fetch('https://anushkapatil.myshopify.com/admin/api/2022-07/orders.json', request)
    .then(response => {
      return response.json;
    })
    // .then( (data) =>{
    //   console.log(data);
    //   let jsonData = JSON.stringify(data);
    //   console.log(data);
    // })
    // .then(responseJson => {
    //   console.log(responseJson);
      // const DataDict = responseJson; 
      // console.log(DataDict);
      // let Status = DataDict["Status"];
    // })
    .catch(error => {
      console.error(error);
    });
