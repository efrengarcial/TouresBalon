<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/dataMappigMCPaymentReq.map" md5sum="8a749e955f76771ba4ae88bd9cd6bfb6" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		dataMappigMCPaymentReq.map
*   Map declaration(s):	dataMappigMCPaymentReq
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FPaymentsModuleLib%252Fcom%252Ftouresbalon%252Finterfaces%252FPaymentServiceIF%257DapplyPaymentRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fcom.mastercard.com%252Fservices%257DApplyPaymentSoapIn/xpath%3D%252Fbody/smo.xsd
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
    xmlns:out="wsdl.http://com.mastercard.com/services"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:out2="http://com.mastercard.com/services"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:MapUtils="xalan://com.ibm.wbiserver.transform.util.MapUtils"
    xmlns:map="http://PaymentsModule/com/touresbalon/transforms/dataMappigMCPaymentReq"
    exclude-result-prefixes="xalan str set MapUtils in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:dataMappigMCPaymentReq"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:dataMappigMCPaymentReq">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:ApplyPaymentSoapIn'"/>
      </xsl:attribute>
      <out2:ApplyPayment>
        <out2:payment>
          <!-- a simple data mapping: "in2:applyPayment/request/number"(string) to "out2:Number"(string) -->
          <xsl:if test="in2:applyPayment/request/number">
            <out2:Number>
              <xsl:value-of select="in2:applyPayment/request/number"/>
            </out2:Number>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/expiration"(date) to "out2:Expiration"(dateTime) -->
          <out2:Expiration>
            <!-- variables for custom code -->
            <xsl:variable name="expiration" select="in2:applyPayment/request/expiration"/>
            <xsl:value-of select="MapUtils:dateToDateTime($expiration, '1970-01-01T00:00:00')"/>
          </out2:Expiration>
          <!-- a simple data mapping: "in2:applyPayment/request/amount"(double) to "out2:Amount"(double) -->
          <out2:Amount>
            <xsl:value-of select="in2:applyPayment/request/amount"/>
          </out2:Amount>
          <!-- a simple data mapping: "in2:applyPayment/request/holderFirstName"(string) to "out2:HolderFirstName"(string) -->
          <xsl:if test="in2:applyPayment/request/holderFirstName">
            <out2:HolderFirstName>
              <xsl:value-of select="in2:applyPayment/request/holderFirstName"/>
            </out2:HolderFirstName>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/holderLastName"(string) to "out2:HolderLastName"(string) -->
          <xsl:if test="in2:applyPayment/request/holderLastName">
            <out2:HolderLastName>
              <xsl:value-of select="in2:applyPayment/request/holderLastName"/>
            </out2:HolderLastName>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/emailAddress"(string) to "out2:EmailAddress"(string) -->
          <xsl:if test="in2:applyPayment/request/emailAddress">
            <out2:EmailAddress>
              <xsl:value-of select="in2:applyPayment/request/emailAddress"/>
            </out2:EmailAddress>
          </xsl:if>
          <!-- a simple data mapping: "in2:applyPayment/request/cardSecurityCode"(string) to "out2:CardSecurityCode"(string) -->
          <xsl:if test="in2:applyPayment/request/cardSecurityCode">
            <out2:CardSecurityCode>
              <xsl:value-of select="in2:applyPayment/request/cardSecurityCode"/>
            </out2:CardSecurityCode>
          </xsl:if>
        </out2:payment>
      </out2:ApplyPayment>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:dataMappigMCPaymentReq2">
    <xsl:param name="body"/>
    <out2:ApplyPayment>
      <out2:payment>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/number"(string) to "out2:Number"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/number">
          <out2:Number>
            <xsl:value-of select="$body/in2:applyPayment/request/number"/>
          </out2:Number>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/expiration"(date) to "out2:Expiration"(dateTime) -->
        <out2:Expiration>
          <!-- variables for custom code -->
          <xsl:variable name="expiration" select="$body/in2:applyPayment/request/expiration"/>
          <xsl:value-of select="MapUtils:dateToDateTime($expiration, '1970-01-01T00:00:00')"/>
        </out2:Expiration>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/amount"(double) to "out2:Amount"(double) -->
        <out2:Amount>
          <xsl:value-of select="$body/in2:applyPayment/request/amount"/>
        </out2:Amount>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/holderFirstName"(string) to "out2:HolderFirstName"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/holderFirstName">
          <out2:HolderFirstName>
            <xsl:value-of select="$body/in2:applyPayment/request/holderFirstName"/>
          </out2:HolderFirstName>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/holderLastName"(string) to "out2:HolderLastName"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/holderLastName">
          <out2:HolderLastName>
            <xsl:value-of select="$body/in2:applyPayment/request/holderLastName"/>
          </out2:HolderLastName>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/emailAddress"(string) to "out2:EmailAddress"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/emailAddress">
          <out2:EmailAddress>
            <xsl:value-of select="$body/in2:applyPayment/request/emailAddress"/>
          </out2:EmailAddress>
        </xsl:if>
        <!-- a simple data mapping: "$body/in2:applyPayment/request/cardSecurityCode"(string) to "out2:CardSecurityCode"(string) -->
        <xsl:if test="$body/in2:applyPayment/request/cardSecurityCode">
          <out2:CardSecurityCode>
            <xsl:value-of select="$body/in2:applyPayment/request/cardSecurityCode"/>
          </out2:CardSecurityCode>
        </xsl:if>
      </out2:payment>
    </out2:ApplyPayment>
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
