<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/avianca/dataMappingCancelReservReq.map" md5sum="d6b4a9ed99263ba2711c184b4816c3de" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		dataMappingCancelReservReq.map
*   Map declaration(s):	dataMappingCancelReservReq
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTransportationLib%257DcancelReservationRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fwww.avianca.com%252Fservices%252F%257DcancelarVueloSoapIn/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in="wsdl.http://TransportationLib"
    xmlns:in2="http://CommonDomain/com/touresbalon/bo"
    xmlns:in3="http://TransportLib/com/touresbalon/bo"
    xmlns:in4="http://TransportationLib"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out="wsdl.http://www.avianca.com/services/"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="http://www.avianca.com/services/"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://TransportationModule/com/touresbalon/transforms/avianca/dataMappingCancelReservReq"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:dataMappingCancelReservReq"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:dataMappingCancelReservReq">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:cancelarVueloSoapIn'"/>
      </xsl:attribute>
      <out2:cancelarVuelo>
        <!-- a simple data mapping: "in4:cancelReservation/in4:request/content/orderID"(string) to "out2:orderID"(string) -->
        <xsl:if test="in4:cancelReservation/in4:request/content/orderID">
          <out2:orderID>
            <xsl:value-of select="in4:cancelReservation/in4:request/content/orderID"/>
          </out2:orderID>
        </xsl:if>
      </out2:cancelarVuelo>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:dataMappingCancelReservReq2">
    <xsl:param name="body"/>
    <out2:cancelarVuelo>
      <!-- a simple data mapping: "$body/in4:cancelReservation/in4:request/content/orderID"(string) to "out2:orderID"(string) -->
      <xsl:if test="$body/in4:cancelReservation/in4:request/content/orderID">
        <out2:orderID>
          <xsl:value-of select="$body/in4:cancelReservation/in4:request/content/orderID"/>
        </out2:orderID>
      </xsl:if>
    </out2:cancelarVuelo>
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
