/**
 * PersonaWsBean.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package pe.com.bvl.ssc.ws.ws;

public class PersonaWsBean  implements java.io.Serializable {
    private java.lang.String coTrab;

    private java.lang.String noApelMate;

    private java.lang.String noApelPate;

    private java.lang.String noDireMai1;

    private java.lang.String noTrab;

    private java.lang.String nombreCompleto;

    private pe.com.bvl.ssc.ws.ws.PersonaEmpWsBean personaEmpWsBean;

    private java.lang.String tiSitu;

    public PersonaWsBean() {
    }

    public PersonaWsBean(
           java.lang.String coTrab,
           java.lang.String noApelMate,
           java.lang.String noApelPate,
           java.lang.String noDireMai1,
           java.lang.String noTrab,
           java.lang.String nombreCompleto,
           pe.com.bvl.ssc.ws.ws.PersonaEmpWsBean personaEmpWsBean,
           java.lang.String tiSitu) {
           this.coTrab = coTrab;
           this.noApelMate = noApelMate;
           this.noApelPate = noApelPate;
           this.noDireMai1 = noDireMai1;
           this.noTrab = noTrab;
           this.nombreCompleto = nombreCompleto;
           this.personaEmpWsBean = personaEmpWsBean;
           this.tiSitu = tiSitu;
    }


    /**
     * Gets the coTrab value for this PersonaWsBean.
     * 
     * @return coTrab
     */
    public java.lang.String getCoTrab() {
        return coTrab;
    }


    /**
     * Sets the coTrab value for this PersonaWsBean.
     * 
     * @param coTrab
     */
    public void setCoTrab(java.lang.String coTrab) {
        this.coTrab = coTrab;
    }


    /**
     * Gets the noApelMate value for this PersonaWsBean.
     * 
     * @return noApelMate
     */
    public java.lang.String getNoApelMate() {
        return noApelMate;
    }


    /**
     * Sets the noApelMate value for this PersonaWsBean.
     * 
     * @param noApelMate
     */
    public void setNoApelMate(java.lang.String noApelMate) {
        this.noApelMate = noApelMate;
    }


    /**
     * Gets the noApelPate value for this PersonaWsBean.
     * 
     * @return noApelPate
     */
    public java.lang.String getNoApelPate() {
        return noApelPate;
    }


    /**
     * Sets the noApelPate value for this PersonaWsBean.
     * 
     * @param noApelPate
     */
    public void setNoApelPate(java.lang.String noApelPate) {
        this.noApelPate = noApelPate;
    }


    /**
     * Gets the noDireMai1 value for this PersonaWsBean.
     * 
     * @return noDireMai1
     */
    public java.lang.String getNoDireMai1() {
        return noDireMai1;
    }


    /**
     * Sets the noDireMai1 value for this PersonaWsBean.
     * 
     * @param noDireMai1
     */
    public void setNoDireMai1(java.lang.String noDireMai1) {
        this.noDireMai1 = noDireMai1;
    }


    /**
     * Gets the noTrab value for this PersonaWsBean.
     * 
     * @return noTrab
     */
    public java.lang.String getNoTrab() {
        return noTrab;
    }


    /**
     * Sets the noTrab value for this PersonaWsBean.
     * 
     * @param noTrab
     */
    public void setNoTrab(java.lang.String noTrab) {
        this.noTrab = noTrab;
    }


    /**
     * Gets the nombreCompleto value for this PersonaWsBean.
     * 
     * @return nombreCompleto
     */
    public java.lang.String getNombreCompleto() {
        return nombreCompleto;
    }


    /**
     * Sets the nombreCompleto value for this PersonaWsBean.
     * 
     * @param nombreCompleto
     */
    public void setNombreCompleto(java.lang.String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }


    /**
     * Gets the personaEmpWsBean value for this PersonaWsBean.
     * 
     * @return personaEmpWsBean
     */
    public pe.com.bvl.ssc.ws.ws.PersonaEmpWsBean getPersonaEmpWsBean() {
        return personaEmpWsBean;
    }


    /**
     * Sets the personaEmpWsBean value for this PersonaWsBean.
     * 
     * @param personaEmpWsBean
     */
    public void setPersonaEmpWsBean(pe.com.bvl.ssc.ws.ws.PersonaEmpWsBean personaEmpWsBean) {
        this.personaEmpWsBean = personaEmpWsBean;
    }


    /**
     * Gets the tiSitu value for this PersonaWsBean.
     * 
     * @return tiSitu
     */
    public java.lang.String getTiSitu() {
        return tiSitu;
    }


    /**
     * Sets the tiSitu value for this PersonaWsBean.
     * 
     * @param tiSitu
     */
    public void setTiSitu(java.lang.String tiSitu) {
        this.tiSitu = tiSitu;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof PersonaWsBean)) return false;
        PersonaWsBean other = (PersonaWsBean) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.coTrab==null && other.getCoTrab()==null) || 
             (this.coTrab!=null &&
              this.coTrab.equals(other.getCoTrab()))) &&
            ((this.noApelMate==null && other.getNoApelMate()==null) || 
             (this.noApelMate!=null &&
              this.noApelMate.equals(other.getNoApelMate()))) &&
            ((this.noApelPate==null && other.getNoApelPate()==null) || 
             (this.noApelPate!=null &&
              this.noApelPate.equals(other.getNoApelPate()))) &&
            ((this.noDireMai1==null && other.getNoDireMai1()==null) || 
             (this.noDireMai1!=null &&
              this.noDireMai1.equals(other.getNoDireMai1()))) &&
            ((this.noTrab==null && other.getNoTrab()==null) || 
             (this.noTrab!=null &&
              this.noTrab.equals(other.getNoTrab()))) &&
            ((this.nombreCompleto==null && other.getNombreCompleto()==null) || 
             (this.nombreCompleto!=null &&
              this.nombreCompleto.equals(other.getNombreCompleto()))) &&
            ((this.personaEmpWsBean==null && other.getPersonaEmpWsBean()==null) || 
             (this.personaEmpWsBean!=null &&
              this.personaEmpWsBean.equals(other.getPersonaEmpWsBean()))) &&
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
        if (getCoTrab() != null) {
            _hashCode += getCoTrab().hashCode();
        }
        if (getNoApelMate() != null) {
            _hashCode += getNoApelMate().hashCode();
        }
        if (getNoApelPate() != null) {
            _hashCode += getNoApelPate().hashCode();
        }
        if (getNoDireMai1() != null) {
            _hashCode += getNoDireMai1().hashCode();
        }
        if (getNoTrab() != null) {
            _hashCode += getNoTrab().hashCode();
        }
        if (getNombreCompleto() != null) {
            _hashCode += getNombreCompleto().hashCode();
        }
        if (getPersonaEmpWsBean() != null) {
            _hashCode += getPersonaEmpWsBean().hashCode();
        }
        if (getTiSitu() != null) {
            _hashCode += getTiSitu().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(PersonaWsBean.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaWsBean"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("coTrab");
        elemField.setXmlName(new javax.xml.namespace.QName("", "coTrab"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("noApelMate");
        elemField.setXmlName(new javax.xml.namespace.QName("", "noApelMate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("noApelPate");
        elemField.setXmlName(new javax.xml.namespace.QName("", "noApelPate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("noDireMai1");
        elemField.setXmlName(new javax.xml.namespace.QName("", "noDireMai1"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("noTrab");
        elemField.setXmlName(new javax.xml.namespace.QName("", "noTrab"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombreCompleto");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombreCompleto"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("personaEmpWsBean");
        elemField.setXmlName(new javax.xml.namespace.QName("", "personaEmpWsBean"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaEmpWsBean"));
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
