<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/aa/xslMappingCancelReservation.map" md5sum="d745e5483994337b0b54ee934f67aa97" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		xslMappingCancelReservation.map
*   Map declaration(s):	xslMappingCancelReservation
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTransportationLib%257DcancelReservationRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Ftempuri.org%252F%257DcancelFlightSoapIn/xpath%3D%252Fbody/smo.xsd
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
    xmlns:out="http://tempuri.org/"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="wsdl.http://tempuri.org/"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://AmericanAirlinesModule/com/touresbalon/transforms/xslMappingCancelReservation"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:xslMappingCancelReservation"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:xslMappingCancelReservation">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:cancelFlightSoapIn'"/>
      </xsl:attribute>
      <out:cancelFlight>
        <!-- a simple data mapping: "in4:cancelReservation/in4:request/content/orderID"(string) to "out:orderID"(string) -->
        <xsl:if test="in4:cancelReservation/in4:request/content/orderID">
          <out:orderID>
            <xsl:value-of select="in4:cancelReservation/in4:request/content/orderID"/>
          </out:orderID>
        </xsl:if>
      </out:cancelFlight>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:xslMappingCancelReservation2">
    <xsl:param name="body"/>
    <out:cancelFlight>
      <!-- a simple data mapping: "$body/in4:cancelReservation/in4:request/content/orderID"(string) to "out:orderID"(string) -->
      <xsl:if test="$body/in4:cancelReservation/in4:request/content/orderID">
        <out:orderID>
          <xsl:value-of select="$body/in4:cancelReservation/in4:request/content/orderID"/>
        </out:orderID>
      </xsl:if>
    </out:cancelFlight>
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