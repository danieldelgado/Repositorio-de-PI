/**
 * SeccionWsBean.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package pe.com.bvl.ssc.ws.ws;

public class SeccionWsBean  implements java.io.Serializable {
    private pe.com.bvl.ssc.ws.ws.AreaWsBean areaWsBean;

    private java.lang.String coArea;

    private java.lang.String coSecc;

    private java.lang.String deSecc;

    public SeccionWsBean() {
    }

    public SeccionWsBean(
           pe.com.bvl.ssc.ws.ws.AreaWsBean areaWsBean,
           java.lang.String coArea,
           java.lang.String coSecc,
           java.lang.String deSecc) {
           this.areaWsBean = areaWsBean;
           this.coArea = coArea;
           this.coSecc = coSecc;
           this.deSecc = deSecc;
    }


    /**
     * Gets the areaWsBean value for this SeccionWsBean.
     * 
     * @return areaWsBean
     */
    public pe.com.bvl.ssc.ws.ws.AreaWsBean getAreaWsBean() {
        return areaWsBean;
    }


    /**
     * Sets the areaWsBean value for this SeccionWsBean.
     * 
     * @param areaWsBean
     */
    public void setAreaWsBean(pe.com.bvl.ssc.ws.ws.AreaWsBean areaWsBean) {
        this.areaWsBean = areaWsBean;
    }


    /**
     * Gets the coArea value for this SeccionWsBean.
     * 
     * @return coArea
     */
    public java.lang.String getCoArea() {
        return coArea;
    }


    /**
     * Sets the coArea value for this SeccionWsBean.
     * 
     * @param coArea
     */
    public void setCoArea(java.lang.String coArea) {
        this.coArea = coArea;
    }


    /**
     * Gets the coSecc value for this SeccionWsBean.
     * 
     * @return coSecc
     */
    public java.lang.String getCoSecc() {
        return coSecc;
    }


    /**
     * Sets the coSecc value for this SeccionWsBean.
     * 
     * @param coSecc
     */
    public void setCoSecc(java.lang.String coSecc) {
        this.coSecc = coSecc;
    }


    /**
     * Gets the deSecc value for this SeccionWsBean.
     * 
     * @return deSecc
     */
    public java.lang.String getDeSecc() {
        return deSecc;
    }


    /**
     * Sets the deSecc value for this SeccionWsBean.
     * 
     * @param deSecc
     */
    public void setDeSecc(java.lang.String deSecc) {
        this.deSecc = deSecc;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof SeccionWsBean)) return false;
        SeccionWsBean other = (SeccionWsBean) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.areaWsBean==null && other.getAreaWsBean()==null) || 
             (this.areaWsBean!=null &&
              this.areaWsBean.equals(other.getAreaWsBean()))) &&
            ((this.coArea==null && other.getCoArea()==null) || 
             (this.coArea!=null &&
              this.coArea.equals(other.getCoArea()))) &&
            ((this.coSecc==null && other.getCoSecc()==null) || 
             (this.coSecc!=null &&
              this.coSecc.equals(other.getCoSecc()))) &&
            ((this.deSecc==null && other.getDeSecc()==null) || 
             (this.deSecc!=null &&
              this.deSecc.equals(other.getDeSecc())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getAreaWsBean() != null) {
            _hashCode += getAreaWsBean().hashCode();
        }
        if (getCoArea() != null) {
            _hashCode += getCoArea().hashCode();
        }
        if (getCoSecc() != null) {
            _hashCode += getCoSecc().hashCode();
        }
        if (getDeSecc() != null) {
            _hashCode += getDeSecc().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(SeccionWsBean.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "seccionWsBean"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("areaWsBean");
        elemField.setXmlName(new javax.xml.namespace.QName("", "areaWsBean"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "areaWsBean"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("coArea");
        elemField.setXmlName(new javax.xml.namespace.QName("", "coArea"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("coSecc");
        elemField.setXmlName(new javax.xml.namespace.QName("", "coSecc"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("deSecc");
        elemField.setXmlName(new javax.xml.namespace.QName("", "deSecc"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
