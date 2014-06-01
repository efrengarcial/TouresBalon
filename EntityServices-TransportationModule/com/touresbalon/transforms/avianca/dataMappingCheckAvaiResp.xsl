<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/avianca/dataMappingCheckAvaiResp.map" md5sum="ad00a4b0c8c06fa586b4b428b7ef43b5" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		dataMappingCheckAvaiResp.map
*   Map declaration(s):	dataMappingCheckAvaiResp
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fwww.avianca.com%252Fservices%252F%257DconsultarDisponibilidadSoapOut/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTransportationLib%257DcheckAvailabilityResponseMsg/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in="wsdl.http://www.avianca.com/services/"
    xmlns:in2="http://www.avianca.com/services/"
    xmlns:out="wsdl.http://TransportationLib"
    xmlns:out2="http://CommonDomain/com/touresbalon/bo"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:out3="http://TransportLib/com/touresbalon/bo"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out4="http://TransportationLib"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://TransportationModule/com/touresbalon/transforms/avianca/dataMappingCheckAvaiResp"
    exclude-result-prefixes="xalan str set in math map exsl in2 date"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:dataMappingCheckAvaiResp"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:dataMappingCheckAvaiResp">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:checkAvailabilityResponseMsg'"/>
      </xsl:attribute>
      <out4:checkAvailabilityResponse>
        <out4:response>
          <!-- a for-each transform: "in2:InformacionVuelo"(InformacionVuelo) to "Content"(TravelResponse) -->
          <xsl:apply-templates select="in2:consultarDisponibilidadResponse/in2:consultarDisponibilidadResult/in2:InformacionVuelo" mode="localInformacionVueloToContent_717870640"/>
        </out4:response>
      </out4:checkAvailabilityResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:dataMappingCheckAvaiResp2">
    <xsl:param name="body"/>
    <out4:checkAvailabilityResponse>
      <out4:response>
        <!-- a for-each transform: "in2:InformacionVuelo"(InformacionVuelo) to "Content"(TravelResponse) -->
        <xsl:apply-templates select="$body/in2:consultarDisponibilidadResponse/in2:consultarDisponibilidadResult/in2:InformacionVuelo" mode="localInformacionVueloToContent_717870640"/>
      </out4:response>
    </out4:checkAvailabilityResponse>
  </xsl:template>

  <!-- This rule represents a for-each transform: "in2:InformacionVuelo" to "Content".  -->
  <xsl:template match="in2:InformacionVuelo"  mode="localInformacionVueloToContent_717870640">
    <Content>
      <!-- a simple data mapping: "in2:NumeroVuelo"(string) to "numViaje"(string) -->
      <xsl:if test="in2:NumeroVuelo">
        <numViaje>
          <xsl:value-of select="in2:NumeroVuelo"/>
        </numViaje>
      </xsl:if>
      <!-- a simple data mapping: "in2:CodigoCiudadOrigen"(string) to "ciudadOrigen"(string) -->
      <xsl:if test="in2:CodigoCiudadOrigen">
        <ciudadOrigen>
          <xsl:value-of select="in2:CodigoCiudadOrigen"/>
        </ciudadOrigen>
      </xsl:if>
      <!-- a simple data mapping: "in2:CodigoCiudadDestino"(string) to "ciudadDestino"(string) -->
      <xsl:if test="in2:CodigoCiudadDestino">
        <ciudadDestino>
          <xsl:value-of select="in2:CodigoCiudadDestino"/>
        </ciudadDestino>
      </xsl:if>
      <!-- a simple data mapping: "in2:NumeroSilla"(string) to "numSilla"(string) -->
      <xsl:if test="in2:NumeroSilla">
        <numSilla>
          <xsl:value-of select="in2:NumeroSilla"/>
        </numSilla>
      </xsl:if>
      <!-- a simple data mapping: "in2:FechaSalida"(dateTime) to "fechaSalida"(dateTime) -->
      <xsl:if test="in2:FechaSalida">
        <fechaSalida>
          <xsl:value-of select="in2:FechaSalida"/>
        </fechaSalida>
      </xsl:if>
    </Content>
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
