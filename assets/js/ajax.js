let GNum = {
  loadNum() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("showNum").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", document.getElementById("inum").value, true);
    xhttp.send();
  }
}

export default GNum