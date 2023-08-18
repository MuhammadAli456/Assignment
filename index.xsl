<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/HNStationers">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
   
</head>
<body>
    <div class="container">
    <h1>HNStationers</h1>
    <table border="1">
        <tr bgcolor="red">
            <th>Product Id</th>
            <th>Product Name</th>
             <th>Quantity</th>
            <th>Price per Unit</th>
            <th>Price per Dozen</th>
           <th>In Stock</th>
        </tr>
        <xsl:for-each select="stationery">
            <!-- <xsl:if test="InStock='yes'"> -->
            <tr bgcolor="white">
                <td><xsl:value-of select="ProductId"></xsl:value-of></td>
                <td><xsl:value-of select="ProductName"></xsl:value-of></td>
                <td><xsl:value-of select="Quantity"></xsl:value-of></td>
                <td><xsl:value-of select="PriceperUnit"></xsl:value-of></td>
                <td><xsl:value-of select="PriceperDozen"></xsl:value-of></td>
                <td><xsl:value-of select="InStock"></xsl:value-of></td>
            </tr>
        <!-- </xsl:if> -->
        </xsl:for-each>
    </table>
</div>
</body>
</html>


</xsl:template>
</xsl:stylesheet>