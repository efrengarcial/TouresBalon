<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="xslt/input_map_req_1.map" md5sum="096e269ce629c6692d59315463f68403" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		input_map_req_1.map
*   Map declaration(s):	input_map_req_1
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FDannCarltonMediation%252FJDBCExport%257DupdateDboTouresbalon_ReservationsRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationLib%252Fcom%252Ftouresbalon%252Finterfaces%252FAccommodationCallbackIF%257DconfirmRequestMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in="http://DannCarltonMediation/JDBCExport"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/dbotouresbalon_reservations"
    xmlns:in3="wsdl.http://DannCarltonMediation/JDBCExport"
    xmlns:out="http://AccommodationLib/com/touresbalon/interfaces/AccommodationCallbackIF"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="wsdl.http://AccommodationLib/com/touresbalon/interfaces/AccommodationCallbackIF"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:out3="http://AccommodationLib/com/touresbalon/bo"
    xmlns:map="http://DannCarltonMediation/xslt/input_map_req_1"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:input_map_req_1"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:input_map_req_1">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:confirmRequestMsg'"/>
      </xsl:attribute>
      <out:confirm>
        <response>
          <!-- a simple data mapping: "in:updateDboTouresbalon_Reservations/in:updateDboTouresbalon_ReservationsInput/order_id"(string) to "orderID"(string) -->
          <xsl:if test="in:updateDboTouresbalon_Reservations/in:updateDboTouresbalon_ReservationsInput/order_id">
            <orderID>
              <xsl:value-of select="in:updateDboTouresbalon_Reservations/in:updateDboTouresbalon_ReservationsInput/order_id"/>
            </orderID>
          </xsl:if>
        </response>
      </out:confirm>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:input_map_req_12">
    <xsl:param name="body"/>
    <out:confirm>
      <response>
        <!-- a simple data mapping: "$body/in:updateDboTouresbalon_Reservations/in:updateDboTouresbalon_ReservationsInput/order_id"(string) to "orderID"(string) -->
        <xsl:if test="$body/in:updateDboTouresbalon_Reservations/in:updateDboTouresbalon_ReservationsInput/order_id">
          <orderID>
            <xsl:value-of select="$body/in:updateDboTouresbalon_Reservations/in:updateDboTouresbalon_ReservationsInput/order_id"/>
          </orderID>
        </xsl:if>
      </response>
    </out:confirm>
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
