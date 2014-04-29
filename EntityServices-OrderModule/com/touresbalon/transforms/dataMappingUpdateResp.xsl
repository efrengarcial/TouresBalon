<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/dataMappingUpdateResp.map" md5sum="53c4f64dca749fdf1f63842a9375e64d" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		dataMappingUpdateResp.map
*   Map declaration(s):	dataMappingUpdateResp
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fservice.model.orders.oms.touresbalon.com%252F%257DupdateStateOrderResponse/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FOrderModule%252Fcom%252Ftouresbalon%252Finterfaces%252FOrderServiceIF%257DupdateOrderResponseMsg/xpath%3D%252Fbody/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xalan="http://xml.apache.org/xslt"
    xmlns:str="http://exslt.org/strings"
    xmlns:set="http://exslt.org/sets"
    xmlns:math="http://exslt.org/math"
    xmlns:exsl="http://exslt.org/common"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:in="wsdl.http://service.model.orders.oms.touresbalon.com/"
    xmlns:out="http://CommonDomain/com/touresbalon/bo"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out2="wsdl.http://OrderModule/com/touresbalon/interfaces/OrderServiceIF"
    xmlns:out3="http://orders.oms.touresbalon.com/"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out4="http://OrderModule/com/touresbalon/interfaces/OrderServiceIF"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://OMSModule/com/touresbalon/transforms/dataMappingUpdateResp"
    exclude-result-prefixes="xalan str set in math map exsl date"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:dataMappingUpdateResp"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:dataMappingUpdateResp">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:updateOrderResponseMsg'"/>
      </xsl:attribute>
      <out4:updateOrderResponse>
        <response>
          <!-- a simple mapping with no associated source:  to "RC"(string) -->
          <RC>
            <xsl:text>OK</xsl:text>
          </RC>
        </response>
      </out4:updateOrderResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:dataMappingUpdateResp2">
    <xsl:param name="body"/>
    <out4:updateOrderResponse>
      <response>
        <!-- a simple mapping with no associated source:  to "RC"(string) -->
        <RC>
          <xsl:text>OK</xsl:text>
        </RC>
      </response>
    </out4:updateOrderResponse>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
