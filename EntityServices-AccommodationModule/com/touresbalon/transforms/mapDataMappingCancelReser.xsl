<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/mapDataMappingCancelReser.map" md5sum="4a17d78a3248e958aa8b0ce6b0ba29af" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		mapDataMappingCancelReser.map
*   Map declaration(s):	mapDataMappingCancelReser
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationLib%252Fcom%252Ftouresbalon%252Finterfaces%252FAccommodationServiceIF%257DcancelReservationRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationModule%252FDannCarltonReservations%257DupdateDboTouresbalon_ReservationsBGRequestMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:out="http://AccommodationModule/DannCarltonReservations"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/dbotouresbalon_reservations"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/existsresult"
    xmlns:out4="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/dbotouresbalon_reservationsbg"
    xmlns:out5="wsdl.http://AccommodationModule/DannCarltonReservations"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:out6="http://com/ibm/j2ca/fault"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:out8="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/dbotouresbalon_reservationscontainer"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:out9="http://com/ibm/j2ca/fault/afcfault"
    xmlns:map="http://AccommodationModule/com/touresbalon/transforms/mapDataMappingCancelReser"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:mapDataMappingCancelReser"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:mapDataMappingCancelReser">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out5:updateDboTouresbalon_ReservationsBGRequestMsg'"/>
      </xsl:attribute>
      <out:updateDboTouresbalon_ReservationsBG>
        <out:updateDboTouresbalon_ReservationsBGInput>
          <!-- a simple mapping with no associated source:  to "verb"(<string>) -->
          <verb>
            <xsl:text>Update</xsl:text>
          </verb>
          <DboTouresbalon_Reservations>
            <!-- a simple data mapping: "in2:cancelReservation/request/orderID"(string) to "order_id"(string) -->
            <xsl:if test="in2:cancelReservation/request/orderID">
              <order_id>
                <xsl:value-of select="in2:cancelReservation/request/orderID"/>
              </order_id>
            </xsl:if>
            <!-- a simple mapping with no associated source:  to "state"(int) -->
            <state>
              <xsl:text>-1</xsl:text>
            </state>
            <guest_name xsi:nil="true"/>
          </DboTouresbalon_Reservations>
        </out:updateDboTouresbalon_ReservationsBGInput>
      </out:updateDboTouresbalon_ReservationsBG>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:mapDataMappingCancelReser2">
    <xsl:param name="body"/>
    <out:updateDboTouresbalon_ReservationsBG>
      <out:updateDboTouresbalon_ReservationsBGInput>
        <!-- a simple mapping with no associated source:  to "verb"(<string>) -->
        <verb>
          <xsl:text>Update</xsl:text>
        </verb>
        <DboTouresbalon_Reservations>
          <!-- a simple data mapping: "$body/in2:cancelReservation/request/orderID"(string) to "order_id"(string) -->
          <xsl:if test="$body/in2:cancelReservation/request/orderID">
            <order_id>
              <xsl:value-of select="$body/in2:cancelReservation/request/orderID"/>
            </order_id>
          </xsl:if>
          <!-- a simple mapping with no associated source:  to "state"(int) -->
          <state>
            <xsl:text>-1</xsl:text>
          </state>
          <guest_name xsi:nil="true"/>
        </DboTouresbalon_Reservations>
      </out:updateDboTouresbalon_ReservationsBGInput>
    </out:updateDboTouresbalon_ReservationsBG>
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
