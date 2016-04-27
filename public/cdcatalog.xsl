<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy� -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <!-- <link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" rel="stylesheet"/> -->
  <link href="stylesheets/tt.css" rel="stylesheet"/>
  </head>
  <body>

    <ul class="pricing_table">
      <h3 style="text-align:center;color:white">PlaceSearchResponse</h3>
      <li class="price_block">
        <!-- <h3>name</h3> -->
        <div class="price">
          <div class="price_figure">
            <span class="price_number">name</span>
          </div>
        </div>
        <ul class="features">
          <xsl:for-each select="PlaceSearchResponse/results/result">

            <li><xsl:value-of select="name"/></li>

          </xsl:for-each>
        </ul>
        <div class="footer">
          <a href="#" class="action_button">Buy Now</a>
        </div>
      </li>
      <li class="price_block">
        <!-- <h3>address</h3> -->
        <div class="price">
          <div class="price_figure">

            <span class="price_tenure">address</span>
          </div>
        </div>
        <ul class="features">
          <xsl:for-each select="PlaceSearchResponse/results/result">

            <li><xsl:value-of select="address"/></li>

          </xsl:for-each>
        </ul>
        <div class="footer">
          <a href="#" class="action_button">Buy Now</a>
        </div>
      </li>
    </ul>


  <!-- <h2>The XML Infomation</h2>
    <table class="table table-bordered" border="1">
      <tr bgcolor="#9acd32">
        <th>name</th>
        <th>address</th>
      </tr>
      <xsl:for-each select="PlaceSearchResponse/results/result">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="address"/></td>
      </tr>
      </xsl:for-each>
    </table> -->
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
