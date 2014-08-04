<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://platform.integration.oracle/blocks/adapter/fw/metadata/ChatClient"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns0="saibot.airport/services/flightupdatenotification"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:reference="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common"
                xmlns:flight="saibot.airport/data/flight">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/FlightUpdateNotificationService.xsd"/>
        <oracle-xsl-mapper:rootElement name="sendFlightUpdateNotificationRequestMessage"
                                       namespace="saibot.airport/services/flightupdatenotification"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/ChatClient.xsd"/>
        <oracle-xsl-mapper:rootElement name="message"
                                       namespace="http://platform.integration.oracle/blocks/adapter/fw/metadata/ChatClient"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140119.0846.5239) AT [SUN MAR 02 11:41:06 CET 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:message>
      <tns:payload>
        <xsl:value-of select="concat(/ns0:sendFlightUpdateNotificationRequestMessage/ns0:Carrier,/ns0:sendFlightUpdateNotificationRequestMessage/ns0:FlightNumber)"/>
      </tns:payload>
    </tns:message>
  </xsl:template>
</xsl:stylesheet>