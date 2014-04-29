<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/mapDataMappingAvailability.map" md5sum="da7724661ce781f3f0bfbf64f81aac1a" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		mapDataMappingAvailability.map
*   Map declaration(s):	mapDataMappingAvailability
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationLib%252Fcom%252Ftouresbalon%252Finterfaces%252FAccommodationServiceIF%257DcheckAvailabilityRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FAccommodationModule%252FJDBCImport%257DretrieveallDannCarltonAvailabilityBGRequestMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:out="http://AccommodationModule/JDBCImport"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out2="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/danncarltonavailability"
    xmlns:out3="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/danncarltonavailabilitybg"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:out4="http://com/ibm/j2ca/fault"
    xmlns:out5="http://www.ibm.com/xmlns/prod/websphere/j2ca/jdbc/danncarltonavailabilitycontainer"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out6="wsdl.http://AccommodationModule/JDBCImport"
    xmlns:out7="http://www.ibm.com/xmlns/prod/websphere/bo/6.0.0"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:out8="http://com/ibm/j2ca/fault/afcfault"
    xmlns:map="http://AccommodationModule/com/touresbalon/transforms/mapDataMappingAvailability"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:mapDataMappingAvailability"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:mapDataMappingAvailability">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out6:retrieveallDannCarltonAvailabilityBGRequestMsg'"/>
      </xsl:attribute>
      <out:retrieveallDannCarltonAvailabilityBG>
        <out:retrieveallDannCarltonAvailabilityBGInput>
          <DannCarltonAvailability>
            <!-- a simple data mapping: "in2:checkAvailability/request/checkInDate"(date) to "parameter2"(date) -->
            <parameter2>
              <xsl:value-of select="in2:checkAvailability/request/checkInDate"/>
            </parameter2>
            <!-- a simple data mapping: "in2:checkAvailability/request/city"(string) to "parameter1"(string) -->
            <parameter1>
              <xsl:value-of select="in2:checkAvailability/request/city"/>
            </parameter1>
          </DannCarltonAvailability>
        </out:retrieveallDannCarltonAvailabilityBGInput>
      </out:retrieveallDannCarltonAvailabilityBG>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:mapDataMappingAvailability2">
    <xsl:param name="body"/>
    <out:retrieveallDannCarltonAvailabilityBG>
      <out:retrieveallDannCarltonAvailabilityBGInput>
        <DannCarltonAvailability>
          <!-- a simple data mapping: "$body/in2:checkAvailability/request/checkInDate"(date) to "parameter2"(date) -->
          <parameter2>
            <xsl:value-of select="$body/in2:checkAvailability/request/checkInDate"/>
          </parameter2>
          <!-- a simple data mapping: "$body/in2:checkAvailability/request/city"(string) to "parameter1"(string) -->
          <parameter1>
            <xsl:value-of select="$body/in2:checkAvailability/request/city"/>
          </parameter1>
        </DannCarltonAvailability>
      </out:retrieveallDannCarltonAvailabilityBGInput>
    </out:retrieveallDannCarltonAvailabilityBG>
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
