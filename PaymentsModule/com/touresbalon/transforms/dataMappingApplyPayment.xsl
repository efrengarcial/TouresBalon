<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/dataMappingApplyPayment.map" md5sum="48f19caa8c4d991f42e7ba5eff349426" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		dataMappingApplyPayment.map
*   Map declaration(s):	dataMappingApplyPayment
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FPaymentsModuleLib%252Fcom%252Ftouresbalon%252Finterfaces%252FPaymentServiceIF%257DapplyPaymentRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Ftempuri.org%252F%257DApplyPaymentSoapIn/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in2="http://PaymentsModuleLib/com/touresbalon/interfaces/PaymentServiceIF"
    xmlns:in3="http://PaymentsModuleLib/com/touresbalon/bo"
    xmlns:in4="wsdl.http://PaymentsModuleLib/com/touresbalon/interfaces/PaymentServiceIF"
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
    xmlns:MapUtils="xalan://com.ibm.wbiserver.transform.util.MapUtils"
    xmlns:map="http://PaymentsModule/com/touresbalon/transforms/dataMappingApplyPayment"
    exclude-result-prefixes="xalan str set MapUtils in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:dataMappingApplyPayment"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:dataMappingApplyPayment">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out2:ApplyPaymentSoapIn'"/>
      </xsl:attribute>
      <out:ApplyPayment>
        <out:payment>
          <!-- a simple data mapping: "in2:applyPayment/request/number"(string) to "out:Number"(string) -->
          <xsl:if test="in2:applyPayment/request/number">
            <out:Number>
              <xsl:value-of select="in2:applyPayment/request/number"/>
            </out:Number>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/expiration"(date) to "out:Expiration"(dateTime) -->
          <out:Expiration>
            <!-- variables for custom code -->
            <xsl:variable name="expiration" select="in2:applyPayment/request/expiration"/>
            <xsl:value-of select="MapUtils:dateToDateTime($expiration, '1970-01-01T00:00:00')"/>
          </out:Expiration>
          <!-- a simple data mapping: "in2:applyPayment/request/amount"(double) to "out:Amount"(decimal) -->
          <out:Amount>
            <xsl:value-of select="in2:applyPayment/request/amount"/>
          </out:Amount>
          <!-- a simple data mapping: "in2:applyPayment/request/holderFirstName"(string) to "out:HolderFirstName"(string) -->
          <xsl:if test="in2:applyPayment/request/holderFirstName">
            <out:HolderFirstName>
              <xsl:value-of select="in2:applyPayment/request/holderFirstName"/>
            </out:HolderFirstName>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/holderLastName"(string) to "out:HolderLastName"(string) -->
          <xsl:if test="in2:applyPayment/request/holderLastName">
            <out:HolderLastName>
              <xsl:value-of select="in2:applyPayment/request/holderLastName"/>
            </out:HolderLastName>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/emailAddress"(string) to "out:EmailAddress"(string) -->
          <xsl:if test="in2:applyPayment/request/emailAddress">
            <out:EmailAddress>
              <xsl:value-of select="in2:applyPayment/request/emailAddress"/>
            </out:EmailAddress>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/cardSecurityCode"(string) to "out:CardSecurityCode"(string) -->
          <xsl:if test="in2:applyPayment/request/cardSecurityCode">
            <out:CardSecurityCode>
              <xsl:value-of select="in2:applyPayment/request/cardSecurityCode"/>
            </out:CardSecurityCode>
          </xsl:if>
        </out:payment>
      </out:ApplyPayment>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:dataMappingApplyPayment2">
    <xsl:param name="body"/>
    <out:ApplyPayment>
      <out:payment>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/number"(string) to "out:Number"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/number">
          <out:Number>
            <xsl:value-of select="$body/in2:applyPayment/request/number"/>
          </out:Number>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/expiration"(date) to "out:Expiration"(dateTime) -->
        <out:Expiration>
          <!-- variables for custom code -->
          <xsl:variable name="expiration" select="$body/in2:applyPayment/request/expiration"/>
          <xsl:value-of select="MapUtils:dateToDateTime($expiration, '1970-01-01T00:00:00')"/>
        </out:Expiration>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/amount"(double) to "out:Amount"(decimal) -->
        <out:Amount>
          <xsl:value-of select="$body/in2:applyPayment/request/amount"/>
        </out:Amount>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/holderFirstName"(string) to "out:HolderFirstName"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/holderFirstName">
          <out:HolderFirstName>
            <xsl:value-of select="$body/in2:applyPayment/request/holderFirstName"/>
          </out:HolderFirstName>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/holderLastName"(string) to "out:HolderLastName"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/holderLastName">
          <out:HolderLastName>
            <xsl:value-of select="$body/in2:applyPayment/request/holderLastName"/>
          </out:HolderLastName>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/emailAddress"(string) to "out:EmailAddress"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/emailAddress">
          <out:EmailAddress>
            <xsl:value-of select="$body/in2:applyPayment/request/emailAddress"/>
          </out:EmailAddress>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/cardSecurityCode"(string) to "out:CardSecurityCode"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/cardSecurityCode">
          <out:CardSecurityCode>
            <xsl:value-of select="$body/in2:applyPayment/request/cardSecurityCode"/>
          </out:CardSecurityCode>
        </xsl:if>
      </out:payment>
    </out:ApplyPayment>
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
