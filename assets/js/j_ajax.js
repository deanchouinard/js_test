let GData = {
  loadData(url, display_id) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById(display_id).innerHTML = this.responseText;
      }
    };
    console.log("loadData");
    xhttp.open("GET", url, true);
    xhttp.send();
  }
}

export default GData
