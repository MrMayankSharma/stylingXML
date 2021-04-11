<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template match="/">
  <html>
  <body>
  <h2>Menu</h2>

<table>
<xsl:for-each select="RESTAURANT/section">
    <table border="1">
	<tr bgcolor="green">
        	<th colspan="3">
		<xsl:value-of select="title"/>
		</th>
      		</tr>
 


	<xsl:for-each select="items/item">
         <xsl:sort select="number(price)" data-type="number" />
	<tr>
	<td><xsl:value-of select="name"/></td>
<xsl:choose>
      <xsl:when test="(price &gt;= 10)">

     <td style="color:red;" data-Type="number">
           <xsl:value-of select="price"/>
           </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="price"/></td>
      </xsl:otherwise>
      </xsl:choose>	
<td><xsl:value-of select="description"/></td>
	</tr>

	</xsl:for-each>
</table>
</xsl:for-each>
</table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>