<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
 <style> textarea, iframe
	   {
border:2px solid ;
height:600px;
width:100%;
}


textarea {

 background-color: #d4d1d1;
 font-size: 1.3em;
 
}



</style>
	 </head>
	
	 <body bgcolor="#fff">
	 
	 
	<!--  <nav id="nav">
						<ul>
							<li><a href="#" class="button">Home</a></li>
							
							<li style="white-space: nowrap;"><a href="login">Sign Out</a></li>
						</ul>
					</nav> -->
	 
	 
	 
	 <table  width="100%" height="100%"> <tr bgcolor="white"><th>
	 <table width="100%" height="100%" border="0" cellspacing="5" cellpadding="5">
	 <tr>
	  <h1 align="center"><u>JS Editor</u></h1>
<td width="50%" scope="col">  </td> 

</tr>
<td  >
<form>
<center><b>Paste Your Code here!</b></center>
<textarea  name="sourceCode" onkeyup="runCode();" id="sourceCode">

</textarea>
</form>
</td>
 
<td><b><center>Output</b></center>
<iframe name="targetCode"  id="targetCode" contentEditable="true">
 </iframe> </td>
</table>
<script>
function runCode() {
var content = document.getElementById('sourceCode').value;
var iframe = document.getElementById('targetCode');
iframe = (iframe.contentWindow)?iframe.contentWindow:(iframe.contentDocument)? iframe.contentDocument.document: 
iframe.contentDocument;
 
iframe.document.open();
iframe.document.write(content);
iframe.document.close();
return false;
}
runCode();
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#sourceCode").keyup(function(){
        $("#targetCode").val($(this).val());
    });
    
});
$(document).ready(function(){
    $("#sourceCode").onmo(function(){
        $("#targetCode").val($(this).val());
    });
    
});
</script>

</tr>
</th>
</table>

<table align="center">
   
    <tr>
        <td>Filename to Save As:</td>
        <td><input id="inputFileNameToSaveAs"></input></td>
        <td><button onclick="saveTextAsFile()">Save HTML File</button></td>
    </tr>
    <tr>
        <td>Select a File to Load:</td>
        <td><input type="file" id="fileToLoad"></td>
        <td><button onclick="loadFileAsText()">Load Selected File</button><td>
    </tr>
</table>
 
<script type="text/javascript">
 
function saveTextAsFile()
{
    var textToSave = document.getElementById("sourceCode").value;
    var textToSaveAsBlob = new Blob([textToSave], {type:"text/html"});
    var textToSaveAsURL = window.URL.createObjectURL(textToSaveAsBlob);
    var fileNameToSaveAs = document.getElementById("inputFileNameToSaveAs").value;
 
    var downloadLink = document.createElement("a");
    downloadLink.download = fileNameToSaveAs;
    downloadLink.innerHTML = "Download File";
    downloadLink.href = textToSaveAsURL;
    downloadLink.onclick = destroyClickedElement;
    downloadLink.style.display = "none";
    document.body.appendChild(downloadLink);
 
    downloadLink.click();
}

function destroyClickedElement(event)
{
    document.body.removeChild(event.target);
}
 
function loadFileAsText()
{
    var fileToLoad = document.getElementById("fileToLoad").files[0];
 
    var fileReader = new FileReader();
    fileReader.onload = function(fileLoadedEvent) 
    {
        var textFromFileLoaded = fileLoadedEvent.target.result;
        document.getElementById("sourceCode").value = textFromFileLoaded;
    };
    fileReader.readAsText(fileToLoad, "UTF-8");
}
 
</script>
 


</body>
</html>