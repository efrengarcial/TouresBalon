<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/xslDataMappingCancReser.map" md5sum="b0b4b39d183fd1c8a19abfb4218783a8" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		xslDataMappingCancReser.map
*   Map declaration(s):	xslDataMappingCancReser
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationLib%252Fcom%252Ftouresbalon%252Finterfaces%252FAccommodationServiceIF%257DcancelReservationRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Ftempuri.org%252F%257DcancelRoomSoapIn/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in="http://CommonDomain/com/touresbalon/bo"
    xmlns:in2="http://AccommodationLib/com/touresbalon/interfaces/AccommodationServiceIF"
    xmlns:in3="wsdl.http://AccommodationLib/com/touresbalon/interfaces/AccommodationServiceIF"
    xmlns:in4="http://AccommodationLib/com/touresbalon/bo"
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
    xmlns:map="http://AccommodationModule/com/touresbalon/transforms/xslDataMappingCancReser"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:xslDataMappingCancReser"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:xslDataMappingCancReser">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:cancelRoomSoapIn'"/>
      </xsl:attribute>
      <out:cancelRoom>
        <out:reservation>
          <!-- a simple data mapping: "in2:cancelReservation/request/orderID"(string) to "out:OrderID"(string) -->
          <xsl:if test="in2:cancelReservation/request/orderID">
            <out:OrderID>
              <xsl:value-of select="in2:cancelReservation/request/orderID"/>
            </out:OrderID>
          </xsl:if>
        </out:reservation>
      </out:cancelRoom>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:xslDataMappingCancReser2">
    <xsl:param name="body"/>
    <out:cancelRoom>
      <out:reservation>
        <!-- a simple data mapping: "$body/in2:cancelReservation/request/orderID"(string) to "out:OrderID"(string) -->
        <xsl:if test="$body/in2:cancelReservation/request/orderID">
          <out:OrderID>
            <xsl:value-of select="$body/in2:cancelReservation/request/orderID"/>
          </out:OrderID>
        </xsl:if>
      </out:reservation>
    </out:cancelRoom>
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
