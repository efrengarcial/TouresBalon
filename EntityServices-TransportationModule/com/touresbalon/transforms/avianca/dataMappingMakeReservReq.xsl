<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/avianca/dataMappingMakeReservReq.map" md5sum="f9457086e7b5c1175c859d6c48e5f604" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		dataMappingMakeReservReq.map
*   Map declaration(s):	dataMappingMakeReservReq
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FTransportationLib%257DmakeReservationRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fwww.avianca.com%252Fservices%252F%257DreservarVueloSoapIn/xpath%3D%252Fbody/smo.xsd
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
    xmlns:map="http://TransportationModule/com/touresbalon/transforms/avianca/dataMappingMakeReservReq"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:dataMappingMakeReservReq"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:dataMappingMakeReservReq">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:reservarVueloSoapIn'"/>
      </xsl:attribute>
      <out2:reservarVuelo>
        <out2:informacionReserva>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/identificacion"(string) to "out2:Identificacion"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/identificacion">
            <out2:Identificacion>
              <xsl:value-of select="in4:makeReservation/in4:request/identificacion"/>
            </out2:Identificacion>
          </xsl:if>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/nombre"(string) to "out2:Nombre"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/nombre">
            <out2:Nombre>
              <xsl:value-of select="in4:makeReservation/in4:request/nombre"/>
            </out2:Nombre>
          </xsl:if>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/apellido"(string) to "out2:Apellido"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/apellido">
            <out2:Apellido>
              <xsl:value-of select="in4:makeReservation/in4:request/apellido"/>
            </out2:Apellido>
          </xsl:if>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/numeroViaje"(string) to "out2:NumeroVuelo"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/numeroViaje">
            <out2:NumeroVuelo>
              <xsl:value-of select="in4:makeReservation/in4:request/numeroViaje"/>
            </out2:NumeroVuelo>
          </xsl:if>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/codigoCiudadOrigen"(string) to "out2:CodigoCiudadOrigen"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/codigoCiudadOrigen">
            <out2:CodigoCiudadOrigen>
              <xsl:value-of select="in4:makeReservation/in4:request/codigoCiudadOrigen"/>
            </out2:CodigoCiudadOrigen>
          </xsl:if>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/codigoCiudadDestino"(string) to "out2:CodigoCiudadDestino"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/codigoCiudadDestino">
            <out2:CodigoCiudadDestino>
              <xsl:value-of select="in4:makeReservation/in4:request/codigoCiudadDestino"/>
            </out2:CodigoCiudadDestino>
          </xsl:if>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/numeroSilla"(string) to "out2:NumeroSilla"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/numeroSilla">
            <out2:NumeroSilla>
              <xsl:value-of select="in4:makeReservation/in4:request/numeroSilla"/>
            </out2:NumeroSilla>
          </xsl:if>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/fechaSalida"(dateTime) to "out2:FechaSalida"(dateTime) -->
          <out2:FechaSalida>
            <xsl:value-of select="in4:makeReservation/in4:request/fechaSalida"/>
          </out2:FechaSalida>
          <!-- a simple data mapping: "in4:makeReservation/in4:request/orderID"(string) to "out2:OrderID"(string) -->
          <xsl:if test="in4:makeReservation/in4:request/orderID">
            <out2:OrderID>
              <xsl:value-of select="in4:makeReservation/in4:request/orderID"/>
            </out2:OrderID>
          </xsl:if>
        </out2:informacionReserva>
      </out2:reservarVuelo>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:dataMappingMakeReservReq2">
    <xsl:param name="body"/>
    <out2:reservarVuelo>
      <out2:informacionReserva>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/identificacion"(string) to "out2:Identificacion"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/identificacion">
          <out2:Identificacion>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/identificacion"/>
          </out2:Identificacion>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/nombre"(string) to "out2:Nombre"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/nombre">
          <out2:Nombre>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/nombre"/>
          </out2:Nombre>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/apellido"(string) to "out2:Apellido"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/apellido">
          <out2:Apellido>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/apellido"/>
          </out2:Apellido>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/numeroViaje"(string) to "out2:NumeroVuelo"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/numeroViaje">
          <out2:NumeroVuelo>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/numeroViaje"/>
          </out2:NumeroVuelo>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/codigoCiudadOrigen"(string) to "out2:CodigoCiudadOrigen"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/codigoCiudadOrigen">
          <out2:CodigoCiudadOrigen>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/codigoCiudadOrigen"/>
          </out2:CodigoCiudadOrigen>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/codigoCiudadDestino"(string) to "out2:CodigoCiudadDestino"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/codigoCiudadDestino">
          <out2:CodigoCiudadDestino>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/codigoCiudadDestino"/>
          </out2:CodigoCiudadDestino>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/numeroSilla"(string) to "out2:NumeroSilla"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/numeroSilla">
          <out2:NumeroSilla>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/numeroSilla"/>
          </out2:NumeroSilla>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/fechaSalida"(dateTime) to "out2:FechaSalida"(dateTime) -->
        <out2:FechaSalida>
          <xsl:value-of select="$body/in4:makeReservation/in4:request/fechaSalida"/>
        </out2:FechaSalida>
        <!-- a simple data mapping: "$body/in4:makeReservation/in4:request/orderID"(string) to "out2:OrderID"(string) -->
        <xsl:if test="$body/in4:makeReservation/in4:request/orderID">
          <out2:OrderID>
            <xsl:value-of select="$body/in4:makeReservation/in4:request/orderID"/>
          </out2:OrderID>
        </xsl:if>
      </out2:informacionReserva>
    </out2:reservarVuelo>
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