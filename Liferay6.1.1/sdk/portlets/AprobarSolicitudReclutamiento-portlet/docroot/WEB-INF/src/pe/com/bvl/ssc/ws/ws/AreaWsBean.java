/**
 * AreaWsBean.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package pe.com.bvl.ssc.ws.ws;

public class AreaWsBean  implements java.io.Serializable {
    private java.lang.String coArea;

    private java.lang.String deArea;

    public AreaWsBean() {
    }

    public AreaWsBean(
           java.lang.String coArea,
           java.lang.String deArea) {
           this.coArea = coArea;
           this.deArea = deArea;
    }


    /**
     * Gets the coArea value for this AreaWsBean.
     * 
     * @return coArea
     */
    public java.lang.String getCoArea() {
        return coArea;
    }


    /**
     * Sets the coArea value for this AreaWsBean.
     * 
     * @param coArea
     */
    public void setCoArea(java.lang.String coArea) {
        this.coArea = coArea;
    }


    /**
     * Gets the deArea value for this AreaWsBean.
     * 
     * @return deArea
     */
    public java.lang.String getDeArea() {
        return deArea;
    }


    /**
     * Sets the deArea value for this AreaWsBean.
     * 
     * @param deArea
     */
    public void setDeArea(java.lang.String deArea) {
        this.deArea = deArea;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof AreaWsBean)) return false;
        AreaWsBean other = (AreaWsBean) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.coArea==null && other.getCoArea()==null) || 
             (this.coArea!=null &&
              this.coArea.equals(other.getCoArea()))) &&
            ((this.deArea==null && other.getDeArea()==null) || 
             (this.deArea!=null &&
              this.deArea.equals(other.getDeArea())));
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
        if (getCoArea() != null) {
            _hashCode += getCoArea().hashCode();
        }
        if (getDeArea() != null) {
            _hashCode += getDeArea().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(AreaWsBean.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "areaWsBean"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("coArea");
        elemField.setXmlName(new javax.xml.namespace.QName("", "coArea"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("deArea");
        elemField.setXmlName(new javax.xml.namespace.QName("", "deArea"));
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
