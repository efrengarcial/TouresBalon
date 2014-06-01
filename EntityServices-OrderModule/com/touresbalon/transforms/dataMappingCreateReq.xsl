<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/touresbalon/transforms/dataMappingCreateReq.map" md5sum="d480f453c3f9ad7e82e0b783c394dd00" version="7.0.500" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor V7.0.500
*
*   Mapping file:		dataMappingCreateReq.map
*   Map declaration(s):	dataMappingCreateReq
*   Input file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252FOrderModule%252Fcom%252Ftouresbalon%252Finterfaces%252FOrderServiceIF%257DcreateOrderRequestMsg/xpath%3D%252Fbody/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/message%3D%257Bhttp%253A%252F%252Fservice.model.orders.oms.touresbalon.com%252F%257DcreateOrder/xpath%3D%252Fbody/smo.xsd
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
    xmlns:in2="wsdl.http://OrderModule/com/touresbalon/interfaces/OrderServiceIF"
    xmlns:in3="http://orders.oms.touresbalon.com/"
    xmlns:in4="http://OrderModule/com/touresbalon/interfaces/OrderServiceIF"
    xmlns:out="wsdl.http://service.model.orders.oms.touresbalon.com/"
    xmlns:io="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io3="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io2="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:io4="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:out2="http://service.model.orders.oms.touresbalon.com/"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:xsd4xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:io6="http://www.w3.org/2005/08/addressing"
    xmlns:map="http://OMSModule/com/touresbalon/transforms/dataMappingCreateReq"
    exclude-result-prefixes="xalan str set in math map exsl in2 date in3 in4"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root template  -->
  <xsl:template match="/">
    <xsl:apply-templates select="body" mode="map:dataMappingCreateReq"/>
  </xsl:template>

  <!-- This rule represents an element mapping: "body" to "body".  -->
  <xsl:template match="body"  mode="map:dataMappingCreateReq">
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:createOrder'"/>
      </xsl:attribute>
      <out2:createOrder>
        <order>
          <!-- a simple data mapping: "in4:createOrder/request/comments"(string) to "comments"(string) -->
          <xsl:if test="in4:createOrder/request/comments">
            <comments>
              <xsl:value-of select="in4:createOrder/request/comments"/>
            </comments>
          </xsl:if>
          <!-- a simple data mapping: "in4:createOrder/request/customerId"(string) to "custId"(string) -->
          <xsl:if test="in4:createOrder/request/customerId">
            <custId>
              <xsl:value-of select="in4:createOrder/request/customerId"/>
            </custId>
          </xsl:if>
          <!-- a simple data mapping: "in4:createOrder/request/endOrderDate"(dateTime) to "endOrderDate"(dateTime) -->
          <xsl:if test="in4:createOrder/request/endOrderDate">
            <endOrderDate>
              <xsl:value-of select="in4:createOrder/request/endOrderDate"/>
            </endOrderDate>
          </xsl:if>
          <!-- a for-each transform: "items"(Item) to "items"(itemDto) -->
          <xsl:apply-templates select="in4:createOrder/request/items" mode="localItemsToItems_1070118809"/>
          <!-- a simple data mapping: "in4:createOrder/request/orderDate"(dateTime) to "orderDate"(dateTime) -->
          <xsl:if test="in4:createOrder/request/orderDate">
            <orderDate>
              <xsl:value-of select="in4:createOrder/request/orderDate"/>
            </orderDate>
          </xsl:if>
          <!-- a simple data mapping: "in4:createOrder/request/price"(double) to "price"(decimal) -->
          <xsl:if test="in4:createOrder/request/price">
            <price>
              <xsl:value-of select="in4:createOrder/request/price"/>
            </price>
          </xsl:if>
          <!-- a simple data mapping: "in4:createOrder/request/status"(string) to "status"(string) -->
          <xsl:if test="in4:createOrder/request/status">
            <status>
              <xsl:value-of select="in4:createOrder/request/status"/>
            </status>
          </xsl:if>
        </order>
      </out2:createOrder>
    </body>
  </xsl:template>

  <!-- This rule represents a type mapping: "body" to "body".  -->
  <xsl:template name="map:dataMappingCreateReq2">
    <xsl:param name="body"/>
    <out2:createOrder>
      <order>
        <!-- a simple data mapping: "$body/in4:createOrder/request/comments"(string) to "comments"(string) -->
        <xsl:if test="$body/in4:createOrder/request/comments">
          <comments>
            <xsl:value-of select="$body/in4:createOrder/request/comments"/>
          </comments>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:createOrder/request/customerId"(string) to "custId"(string) -->
        <xsl:if test="$body/in4:createOrder/request/customerId">
          <custId>
            <xsl:value-of select="$body/in4:createOrder/request/customerId"/>
          </custId>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:createOrder/request/endOrderDate"(dateTime) to "endOrderDate"(dateTime) -->
        <xsl:if test="$body/in4:createOrder/request/endOrderDate">
          <endOrderDate>
            <xsl:value-of select="$body/in4:createOrder/request/endOrderDate"/>
          </endOrderDate>
        </xsl:if>
        <!-- a for-each transform: "items"(Item) to "items"(itemDto) -->
        <xsl:apply-templates select="$body/in4:createOrder/request/items" mode="localItemsToItems_1070118809"/>
        <!-- a simple data mapping: "$body/in4:createOrder/request/orderDate"(dateTime) to "orderDate"(dateTime) -->
        <xsl:if test="$body/in4:createOrder/request/orderDate">
          <orderDate>
            <xsl:value-of select="$body/in4:createOrder/request/orderDate"/>
          </orderDate>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:createOrder/request/price"(double) to "price"(decimal) -->
        <xsl:if test="$body/in4:createOrder/request/price">
          <price>
            <xsl:value-of select="$body/in4:createOrder/request/price"/>
          </price>
        </xsl:if>
        <!-- a simple data mapping: "$body/in4:createOrder/request/status"(string) to "status"(string) -->
        <xsl:if test="$body/in4:createOrder/request/status">
          <status>
            <xsl:value-of select="$body/in4:createOrder/request/status"/>
          </status>
        </xsl:if>
      </order>
    </out2:createOrder>
  </xsl:template>

  <!-- This rule represents a for-each transform: "items" to "items".  -->
  <xsl:template match="items"  mode="localItemsToItems_1070118809">
    <items>
      <!-- a simple data mapping: "itemDate"(dateTime) to "itemDate"(dateTime) -->
      <xsl:if test="itemDate">
        <itemDate>
          <xsl:value-of select="itemDate"/>
        </itemDate>
      </xsl:if>
      <!-- a simple data mapping: "itemId"(string) to "itemId"(string) -->
      <xsl:if test="itemId">
        <itemId>
          <xsl:value-of select="itemId"/>
        </itemId>
      </xsl:if>
      <!-- a simple data mapping: "partNum"(string) to "partNum"(string) -->
      <xsl:if test="partNum">
        <partNum>
          <xsl:value-of select="partNum"/>
        </partNum>
      </xsl:if>
      <!-- a simple data mapping: "price"(decimal) to "price"(decimal) -->
      <xsl:if test="price">
        <price>
          <xsl:value-of select="price"/>
        </price>
      </xsl:if>
      <!-- a simple data mapping: "prodId"(int) to "prodId"(int) -->
      <prodId>
        <xsl:value-of select="prodId"/>
      </prodId>
      <!-- a simple data mapping: "productName"(string) to "productName"(string) -->
      <xsl:if test="productName">
        <productName>
          <xsl:value-of select="productName"/>
        </productName>
      </xsl:if>
      <!-- a simple data mapping: "quantity"(decimal) to "quantity"(decimal) -->
      <xsl:if test="quantity">
        <quantity>
          <xsl:value-of select="quantity"/>
        </quantity>
      </xsl:if>
    </items>
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
