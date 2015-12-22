/**
 * PuestoWsBean.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package pe.com.bvl.ssc.ws.ws;

public class PuestoWsBean  implements java.io.Serializable {
    private java.lang.String coPuesTrab;

    private java.lang.String dePuesTrab;

    public PuestoWsBean() {
    }

    public PuestoWsBean(
           java.lang.String coPuesTrab,
           java.lang.String dePuesTrab) {
           this.coPuesTrab = coPuesTrab;
           this.dePuesTrab = dePuesTrab;
    }


    /**
     * Gets the coPuesTrab value for this PuestoWsBean.
     * 
     * @return coPuesTrab
     */
    public java.lang.String getCoPuesTrab() {
        return coPuesTrab;
    }


    /**
     * Sets the coPuesTrab value for this PuestoWsBean.
     * 
     * @param coPuesTrab
     */
    public void setCoPuesTrab(java.lang.String coPuesTrab) {
        this.coPuesTrab = coPuesTrab;
    }


    /**
     * Gets the dePuesTrab value for this PuestoWsBean.
     * 
     * @return dePuesTrab
     */
    public java.lang.String getDePuesTrab() {
        return dePuesTrab;
    }


    /**
     * Sets the dePuesTrab value for this PuestoWsBean.
     * 
     * @param dePuesTrab
     */
    public void setDePuesTrab(java.lang.String dePuesTrab) {
        this.dePuesTrab = dePuesTrab;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof PuestoWsBean)) return false;
        PuestoWsBean other = (PuestoWsBean) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.coPuesTrab==null && other.getCoPuesTrab()==null) || 
             (this.coPuesTrab!=null &&
              this.coPuesTrab.equals(other.getCoPuesTrab()))) &&
            ((this.dePuesTrab==null && other.getDePuesTrab()==null) || 
             (this.dePuesTrab!=null &&
              this.dePuesTrab.equals(other.getDePuesTrab())));
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
        if (getCoPuesTrab() != null) {
            _hashCode += getCoPuesTrab().hashCode();
        }
        if (getDePuesTrab() != null) {
            _hashCode += getDePuesTrab().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(PuestoWsBean.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "puestoWsBean"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("coPuesTrab");
        elemField.setXmlName(new javax.xml.namespace.QName("", "coPuesTrab"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("dePuesTrab");
        elemField.setXmlName(new javax.xml.namespace.QName("", "dePuesTrab"));
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
