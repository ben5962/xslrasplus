<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:dp="http://www.datapower.com/extensions"
>

<xsl:template match="/">
  <html>
<head>

</head>
  <body>
<script defer="true">

<![CDATA[
function modif(){
var pw = [];
pw  =  document.getElementsByClassName("password");
for (var i=0; i<pw.length;  i++) { pw[i].innerHTML =  atob(pw[i].innerHTML);  }
} ]]>

   
</script>
 <INPUT id="BUTTON1" name="BUTTON1" onclick="modif()" type="button" value="modif"/> 
  <h2>sites rasplus pc de gauche</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>nom du site</th> <th>ip du site</th> <th>util</th><th>mdp base64</th> 
      </tr>
      <xsl:for-each select="RASplus_Setup/Site_Setup/RemoteSites/Group/Post">
      <tr>
          <td class="name"><xsl:value-of select="@name"/></td>
        <td class="address"><xsl:value-of select="@address"/></td>
       <td class="user"><xsl:value-of select="@user"/></td>
     <td class="password"><xsl:value-of select="@password"/></td> 
       
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>