<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/mapDataMappingCancelResponse.map" md5sum="68dab0afd064f969bd817d64010e4271" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		mapDataMappingCancelResponse.map
*   Map declaration(s):	mapDataMappingCancelResponse
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationModule%252FDannCarltonReservations%257DupdateDboTouresbalon_ReservationsBGResponseMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationLib%252Fcom%252Ftouresbalon%252Finterfaces%252FAccommodationServiceIF%257DcancelReservationResponseMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in="http://AccommodationModule/DannCarltonReservations"
    xmlns:in2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/dbotouresbalon_reservations"
    xmlns:in3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/existsresult"
    xmlns:in4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/dbotouresbalon_reservationsbg"
    xmlns:in5="wsdl.http://AccommodationModule/DannCarltonReservations"
    xmlns:in6="http://com/ibm/j2ca/fault"
    xmlns:in7="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:in8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/dbotouresbalon_reservationscontainer"
    xmlns:in9="http://com/ibm/j2ca/fault/afcfault"
    xmlns:out="http://CommonDomain/com/touresbalon/bo"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out2="http://AccommodationLib/com/touresbalon/interfaces/AccommodationServiceIF"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out3="wsdl.http://AccommodationLib/com/touresbalon/interfaces/AccommodationServiceIF"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:out4="http://AccommodationLib/com/touresbalon/bo"
    xmlns:map="http://AccommodationModule/com/touresbalon/transforms/mapDataMappingCancelResponse"
    exclude-result-prefixes="set in math exsl in2 date in3 in4 xalan in5 in6 str in7 in8 in9 map"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:mapDataMappingCancelResponse"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:mapDataMappingCancelResponse">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:cancelReservationResponseMsg'"/>
      </xsl:attribute>
      <out2:cancelReservationResponse>
        <response>
          <!-- a simple data mapping: "in:updateDboTouresbalon_ReservationsBGResponse/in:updateDboTouresbalon_ReservationsBGOutput/DboTouresbalon_Reservations/state"(int) to "RC"(string) -->
          <xsl:if test="in:updateDboTouresbalon_ReservationsBGResponse/in:updateDboTouresbalon_ReservationsBGOutput/DboTouresbalon_Reservations/state">
            <RC>
              <xsl:value-of select="in:updateDboTouresbalon_ReservationsBGResponse/in:updateDboTouresbalon_ReservationsBGOutput/DboTouresbalon_Reservations/state"/>
            </RC>
          </xsl:if>
        </response>
      </out2:cancelReservationResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:mapDataMappingCancelResponse2">
    <xsl:param name="body"/>
    <out2:cancelReservationResponse>
      <response>
        <!-- a simple data mapping: "$body/in:updateDboTouresbalon_ReservationsBGResponse/in:updateDboTouresbalon_ReservationsBGOutput/DboTouresbalon_Reservations/state"(int) to "RC"(string) -->
        <xsl:if test="$body/in:updateDboTouresbalon_ReservationsBGResponse/in:updateDboTouresbalon_ReservationsBGOutput/DboTouresbalon_Reservations/state">
          <RC>
            <xsl:value-of select="$body/in:updateDboTouresbalon_ReservationsBGResponse/in:updateDboTouresbalon_ReservationsBGOutput/DboTouresbalon_Reservations/state"/>
          </RC>
        </xsl:if>
      </response>
    </out2:cancelReservationResponse>
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