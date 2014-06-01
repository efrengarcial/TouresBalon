<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/xslDataMappingAvailabilityResp.map" md5sum="bef6cd546f5e8037b839c3569f67d17c" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		xslDataMappingAvailabilityResp.map
*   Map declaration(s):	xslDataMappingAvailabilityResp
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Ftempuri.org%252F%257DvalidateAvailabilitySoapOut/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationLib%252Fcom%252Ftouresbalon%252Finterfaces%252FAccommodationServiceIF%257DcheckAvailabilityResponseMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in="http://tempuri.org/"
    xmlns:in2="wsdl.http://tempuri.org/"
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
    xmlns:MapUtils="xalan://com.ibm.wbiserver.transform.util.MapUtils"
    xmlns:map="http://AccommodationModule/com/touresbalon/transforms/xslDataMappingAvailabilityResp"
    exclude-result-prefixes="xalan str set MapUtils in math map exsl in2 date"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:xslDataMappingAvailabilityResp"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:xslDataMappingAvailabilityResp">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out3:checkAvailabilityResponseMsg'"/>
      </xsl:attribute>
      <out2:checkAvailabilityResponse>
        <response>
          <!-- a for-each transform: "in:Room"(Room) to "content"(RoomResponse) -->
          <xsl:apply-templates select="in:validateAvailabilityResponse/in:validateAvailabilityResult/in:Room" mode="localRoomToContent_943195504"/>
        </response>
      </out2:checkAvailabilityResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:xslDataMappingAvailabilityResp2">
    <xsl:param name="body"/>
    <out2:checkAvailabilityResponse>
      <response>
        <!-- a for-each transform: "in:Room"(Room) to "content"(RoomResponse) -->
        <xsl:apply-templates select="$body/in:validateAvailabilityResponse/in:validateAvailabilityResult/in:Room" mode="localRoomToContent_943195504"/>
      </response>
    </out2:checkAvailabilityResponse>
  </xsl:template>

  <!-- This rule represents a for-each transform: "in:Room" to "content".  -->
  <xsl:template match="in:Room"  mode="localRoomToContent_943195504">
    <content>
      <!-- a simple data mapping: "in:HotelID"(int) to "hotelID"(int) -->
      <xsl:if test="in:HotelID">
        <hotelID>
          <xsl:value-of select="in:HotelID"/>
        </hotelID>
      </xsl:if>
      <!-- a simple data mapping: "in:RoomNumber"(int) to "roomNumber"(int) -->
      <xsl:if test="in:RoomNumber">
        <roomNumber>
          <xsl:value-of select="in:RoomNumber"/>
        </roomNumber>
      </xsl:if>
      <!-- a simple data mapping: "in:Name"(string) to "name"(string) -->
      <xsl:if test="in:Name">
        <name>
          <xsl:value-of select="in:Name"/>
        </name>
      </xsl:if>
      <!-- a simple data mapping: "in:Address"(string) to "address"(string) -->
      <xsl:if test="in:Address">
        <address>
          <xsl:value-of select="in:Address"/>
        </address>
      </xsl:if>
      <!-- a simple data mapping: "in:City"(string) to "city"(string) -->
      <xsl:if test="in:City">
        <city>
          <xsl:value-of select="in:City"/>
        </city>
      </xsl:if>
      <!-- a simple data mapping: "in:Country"(string) to "country"(string) -->
      <xsl:if test="in:Country">
        <country>
          <xsl:value-of select="in:Country"/>
        </country>
      </xsl:if>
      <!-- a simple data mapping: "in:Type"(string) to "type"(string) -->
      <xsl:if test="in:Type">
        <type>
          <xsl:value-of select="in:Type"/>
        </type>
      </xsl:if>
      <!-- a simple data mapping: "in:Price"(double) to "price"(double) -->
      <xsl:if test="in:Price">
        <price>
          <xsl:value-of select="in:Price"/>
        </price>
      </xsl:if>
      <!-- a simple data mapping: "in:CheckInDate"(dateTime) to "checkInDate"(date) -->
      <xsl:if test="in:CheckInDate">
        <checkInDate>
          <!-- variables for custom code -->
          <xsl:variable name="CheckInDate" select="in:CheckInDate"/>
          <xsl:value-of select="MapUtils:dateTimeToDate($CheckInDate, '1970-01-01')"/>
        </checkInDate>
      </xsl:if>
      <!-- a simple data mapping: "in:checkOutDate"(dateTime) to "checkOutDate"(date) -->
      <xsl:if test="in:checkOutDate">
        <checkOutDate>
          <!-- variables for custom code -->
          <xsl:variable name="checkOutDate" select="in:checkOutDate"/>
          <xsl:value-of select="MapUtils:dateTimeToDate($checkOutDate, '1970-01-01')"/>
        </checkOutDate>
      </xsl:if>
    </content>
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
