/**
 * PersonaEmpWsBean.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package pe.com.bvl.ssc.ws.ws;

public class PersonaEmpWsBean  implements java.io.Serializable {
    private pe.com.bvl.ssc.ws.ws.AreaWsBean areaWsBean;

    private java.lang.String coArea;

    private java.lang.String coPuesTrab;

    private java.lang.String coSecc;

    private pe.com.bvl.ssc.ws.ws.PuestoWsBean puestoWsBean;

    private pe.com.bvl.ssc.ws.ws.SeccionWsBean seccionWsBean;

    private java.lang.String tiSitu;

    public PersonaEmpWsBean() {
    }

    public PersonaEmpWsBean(
           pe.com.bvl.ssc.ws.ws.AreaWsBean areaWsBean,
           java.lang.String coArea,
           java.lang.String coPuesTrab,
           java.lang.String coSecc,
           pe.com.bvl.ssc.ws.ws.PuestoWsBean puestoWsBean,
           pe.com.bvl.ssc.ws.ws.SeccionWsBean seccionWsBean,
           java.lang.String tiSitu) {
           this.areaWsBean = areaWsBean;
           this.coArea = coArea;
           this.coPuesTrab = coPuesTrab;
           this.coSecc = coSecc;
           this.puestoWsBean = puestoWsBean;
           this.seccionWsBean = seccionWsBean;
           this.tiSitu = tiSitu;
    }


    /**
     * Gets the areaWsBean value for this PersonaEmpWsBean.
     * 
     * @return areaWsBean
     */
    public pe.com.bvl.ssc.ws.ws.AreaWsBean getAreaWsBean() {
        return areaWsBean;
    }


    /**
     * Sets the areaWsBean value for this PersonaEmpWsBean.
     * 
     * @param areaWsBean
     */
    public void setAreaWsBean(pe.com.bvl.ssc.ws.ws.AreaWsBean areaWsBean) {
        this.areaWsBean = areaWsBean;
    }


    /**
     * Gets the coArea value for this PersonaEmpWsBean.
     * 
     * @return coArea
     */
    public java.lang.String getCoArea() {
        return coArea;
    }


    /**
     * Sets the coArea value for this PersonaEmpWsBean.
     * 
     * @param coArea
     */
    public void setCoArea(java.lang.String coArea) {
        this.coArea = coArea;
    }


    /**
     * Gets the coPuesTrab value for this PersonaEmpWsBean.
     * 
     * @return coPuesTrab
     */
    public java.lang.String getCoPuesTrab() {
        return coPuesTrab;
    }


    /**
     * Sets the coPuesTrab value for this PersonaEmpWsBean.
     * 
     * @param coPuesTrab
     */
    public void setCoPuesTrab(java.lang.String coPuesTrab) {
        this.coPuesTrab = coPuesTrab;
    }


    /**
     * Gets the coSecc value for this PersonaEmpWsBean.
     * 
     * @return coSecc
     */
    public java.lang.String getCoSecc() {
        return coSecc;
    }


    /**
     * Sets the coSecc value for this PersonaEmpWsBean.
     * 
     * @param coSecc
     */
    public void setCoSecc(java.lang.String coSecc) {
        this.coSecc = coSecc;
    }


    /**
     * Gets the puestoWsBean value for this PersonaEmpWsBean.
     * 
     * @return puestoWsBean
     */
    public pe.com.bvl.ssc.ws.ws.PuestoWsBean getPuestoWsBean() {
        return puestoWsBean;
    }


    /**
     * Sets the puestoWsBean value for this PersonaEmpWsBean.
     * 
     * @param puestoWsBean
     */
    public void setPuestoWsBean(pe.com.bvl.ssc.ws.ws.PuestoWsBean puestoWsBean) {
        this.puestoWsBean = puestoWsBean;
    }


    /**
     * Gets the seccionWsBean value for this PersonaEmpWsBean.
     * 
     * @return seccionWsBean
     */
    public pe.com.bvl.ssc.ws.ws.SeccionWsBean getSeccionWsBean() {
        return seccionWsBean;
    }


    /**
     * Sets the seccionWsBean value for this PersonaEmpWsBean.
     * 
     * @param seccionWsBean
     */
    public void setSeccionWsBean(pe.com.bvl.ssc.ws.ws.SeccionWsBean seccionWsBean) {
        this.seccionWsBean = seccionWsBean;
    }


    /**
     * Gets the tiSitu value for this PersonaEmpWsBean.
     * 
     * @return tiSitu
     */
    public java.lang.String getTiSitu() {
        return tiSitu;
    }


    /**
     * Sets the tiSitu value for this PersonaEmpWsBean.
     * 
     * @param tiSitu
     */
    public void setTiSitu(java.lang.String tiSitu) {
        this.tiSitu = tiSitu;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof PersonaEmpWsBean)) return false;
        PersonaEmpWsBean other = (PersonaEmpWsBean) obj;
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
            ((this.coPuesTrab==null && other.getCoPuesTrab()==null) || 
             (this.coPuesTrab!=null &&
              this.coPuesTrab.equals(other.getCoPuesTrab()))) &&
            ((this.coSecc==null && other.getCoSecc()==null) || 
             (this.coSecc!=null &&
              this.coSecc.equals(other.getCoSecc()))) &&
            ((this.puestoWsBean==null && other.getPuestoWsBean()==null) || 
             (this.puestoWsBean!=null &&
              this.puestoWsBean.equals(other.getPuestoWsBean()))) &&
            ((this.seccionWsBean==null && other.getSeccionWsBean()==null) || 
             (this.seccionWsBean!=null &&
              this.seccionWsBean.equals(other.getSeccionWsBean()))) &&
            ((this.tiSitu==null && other.getTiSitu()==null) || 
             (this.tiSitu!=null &&
              this.tiSitu.equals(other.getTiSitu())));
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
        if (getCoPuesTrab() != null) {
            _hashCode += getCoPuesTrab().hashCode();
        }
        if (getCoSecc() != null) {
            _hashCode += getCoSecc().hashCode();
        }
        if (getPuestoWsBean() != null) {
            _hashCode += getPuestoWsBean().hashCode();
        }
        if (getSeccionWsBean() != null) {
            _hashCode += getSeccionWsBean().hashCode();
        }
        if (getTiSitu() != null) {
            _hashCode += getTiSitu().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(PersonaEmpWsBean.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaEmpWsBean"));
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
        elemField.setFieldName("coPuesTrab");
        elemField.setXmlName(new javax.xml.namespace.QName("", "coPuesTrab"));
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
        elemField.setFieldName("puestoWsBean");
        elemField.setXmlName(new javax.xml.namespace.QName("", "puestoWsBean"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "puestoWsBean"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("seccionWsBean");
        elemField.setXmlName(new javax.xml.namespace.QName("", "seccionWsBean"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "seccionWsBean"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("tiSitu");
        elemField.setXmlName(new javax.xml.namespace.QName("", "tiSitu"));
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
