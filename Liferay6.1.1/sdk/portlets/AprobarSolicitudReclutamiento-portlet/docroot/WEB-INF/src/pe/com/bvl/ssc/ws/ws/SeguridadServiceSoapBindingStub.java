/**
 * SeguridadServiceSoapBindingStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package pe.com.bvl.ssc.ws.ws;

public class SeguridadServiceSoapBindingStub extends org.apache.axis.client.Stub implements pe.com.bvl.ssc.ws.ws.SeguridadType {
    private java.util.Vector cachedSerClasses = new java.util.Vector();
    private java.util.Vector cachedSerQNames = new java.util.Vector();
    private java.util.Vector cachedSerFactories = new java.util.Vector();
    private java.util.Vector cachedDeserFactories = new java.util.Vector();

    static org.apache.axis.description.OperationDesc [] _operations;

    static {
        _operations = new org.apache.axis.description.OperationDesc[14];
        _initOperationDesc1();
        _initOperationDesc2();
    }

    private static void _initOperationDesc1(){
        org.apache.axis.description.OperationDesc oper;
        org.apache.axis.description.ParameterDesc param;
        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("desencriptar");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "valor"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        oper.setReturnClass(java.lang.String.class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[0] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("encriptar");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "valor"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        oper.setReturnClass(java.lang.String.class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[1] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("buscarPersonas");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "coArea"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "coPuesTrab"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaWsBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.PersonaWsBean[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[2] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("listarPuestos");
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "puestoWsBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.PuestoWsBean[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[3] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("obtenerCodigos");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "nombreCompleto"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        oper.setReturnClass(java.lang.String[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[4] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("listarAreasSeccion");
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "seccionWsBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.SeccionWsBean[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[5] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("obtenerEscalamientoPorColaborador");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "codigo"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "escalamientoWSBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.EscalamientoWSBean.class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[6] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("obtenerNombreCompleto");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "codTrabajador"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        oper.setReturnClass(java.lang.String.class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[7] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("init");
        oper.setReturnType(org.apache.axis.encoding.XMLType.AXIS_VOID);
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        _operations[8] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("buscarPersonasPorCodigoNombre");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "codigonombre"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaWsBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.PersonaWsBean[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[9] = oper;

    }

    private static void _initOperationDesc2(){
        org.apache.axis.description.OperationDesc oper;
        org.apache.axis.description.ParameterDesc param;
        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("obtenerPuesto");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "codTrabajador"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "puestoWsBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.PuestoWsBean.class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[10] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("obtenerPersonasPorCodigoColaborador");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "lstCodigos"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String[].class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaWsBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.PersonaWsBean[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[11] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("listarAreas");
        oper.setReturnType(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "areaWsBean"));
        oper.setReturnClass(pe.com.bvl.ssc.ws.ws.AreaWsBean[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[12] = oper;

        oper = new org.apache.axis.description.OperationDesc();
        oper.setName("obtenerUsuario");
        param = new org.apache.axis.description.ParameterDesc(new javax.xml.namespace.QName("", "codTrabajador"), org.apache.axis.description.ParameterDesc.IN, new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"), java.lang.String.class, false, false);
        param.setOmittable(true);
        oper.addParameter(param);
        oper.setReturnType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        oper.setReturnClass(java.lang.String[].class);
        oper.setReturnQName(new javax.xml.namespace.QName("", "return"));
        oper.setStyle(org.apache.axis.constants.Style.WRAPPED);
        oper.setUse(org.apache.axis.constants.Use.LITERAL);
        oper.addFault(new org.apache.axis.description.FaultDesc(
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"),
                      "pe.com.bvl.ssc.ws.ws.ExceptionCore",
                      new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore"), 
                      true
                     ));
        _operations[13] = oper;

    }

    public SeguridadServiceSoapBindingStub() throws org.apache.axis.AxisFault {
         this(null);
    }

    public SeguridadServiceSoapBindingStub(java.net.URL endpointURL, javax.xml.rpc.Service service) throws org.apache.axis.AxisFault {
         this(service);
         super.cachedEndpoint = endpointURL;
    }

    public SeguridadServiceSoapBindingStub(javax.xml.rpc.Service service) throws org.apache.axis.AxisFault {
        if (service == null) {
            super.service = new org.apache.axis.client.Service();
        } else {
            super.service = service;
        }
        ((org.apache.axis.client.Service)super.service).setTypeMappingVersion("1.2");
            java.lang.Class cls;
            javax.xml.namespace.QName qName;
            javax.xml.namespace.QName qName2;
            java.lang.Class beansf = org.apache.axis.encoding.ser.BeanSerializerFactory.class;
            java.lang.Class beandf = org.apache.axis.encoding.ser.BeanDeserializerFactory.class;
            java.lang.Class enumsf = org.apache.axis.encoding.ser.EnumSerializerFactory.class;
            java.lang.Class enumdf = org.apache.axis.encoding.ser.EnumDeserializerFactory.class;
            java.lang.Class arraysf = org.apache.axis.encoding.ser.ArraySerializerFactory.class;
            java.lang.Class arraydf = org.apache.axis.encoding.ser.ArrayDeserializerFactory.class;
            java.lang.Class simplesf = org.apache.axis.encoding.ser.SimpleSerializerFactory.class;
            java.lang.Class simpledf = org.apache.axis.encoding.ser.SimpleDeserializerFactory.class;
            java.lang.Class simplelistsf = org.apache.axis.encoding.ser.SimpleListSerializerFactory.class;
            java.lang.Class simplelistdf = org.apache.axis.encoding.ser.SimpleListDeserializerFactory.class;
            qName = new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "areaWsBean");
            cachedSerQNames.add(qName);
            cls = pe.com.bvl.ssc.ws.ws.AreaWsBean.class;
            cachedSerClasses.add(cls);
            cachedSerFactories.add(beansf);
            cachedDeserFactories.add(beandf);

            qName = new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "escalamientoWSBean");
            cachedSerQNames.add(qName);
            cls = pe.com.bvl.ssc.ws.ws.EscalamientoWSBean.class;
            cachedSerClasses.add(cls);
            cachedSerFactories.add(beansf);
            cachedDeserFactories.add(beandf);

            qName = new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "ExceptionCore");
            cachedSerQNames.add(qName);
            cls = pe.com.bvl.ssc.ws.ws.ExceptionCore.class;
            cachedSerClasses.add(cls);
            cachedSerFactories.add(beansf);
            cachedDeserFactories.add(beandf);

            qName = new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaEmpWsBean");
            cachedSerQNames.add(qName);
            cls = pe.com.bvl.ssc.ws.ws.PersonaEmpWsBean.class;
            cachedSerClasses.add(cls);
            cachedSerFactories.add(beansf);
            cachedDeserFactories.add(beandf);

            qName = new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "personaWsBean");
            cachedSerQNames.add(qName);
            cls = pe.com.bvl.ssc.ws.ws.PersonaWsBean.class;
            cachedSerClasses.add(cls);
            cachedSerFactories.add(beansf);
            cachedDeserFactories.add(beandf);

            qName = new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "puestoWsBean");
            cachedSerQNames.add(qName);
            cls = pe.com.bvl.ssc.ws.ws.PuestoWsBean.class;
            cachedSerClasses.add(cls);
            cachedSerFactories.add(beansf);
            cachedDeserFactories.add(beandf);

            qName = new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "seccionWsBean");
            cachedSerQNames.add(qName);
            cls = pe.com.bvl.ssc.ws.ws.SeccionWsBean.class;
            cachedSerClasses.add(cls);
            cachedSerFactories.add(beansf);
            cachedDeserFactories.add(beandf);

    }

    protected org.apache.axis.client.Call createCall() throws java.rmi.RemoteException {
        try {
            org.apache.axis.client.Call _call = super._createCall();
            if (super.maintainSessionSet) {
                _call.setMaintainSession(super.maintainSession);
            }
            if (super.cachedUsername != null) {
                _call.setUsername(super.cachedUsername);
            }
            if (super.cachedPassword != null) {
                _call.setPassword(super.cachedPassword);
            }
            if (super.cachedEndpoint != null) {
                _call.setTargetEndpointAddress(super.cachedEndpoint);
            }
            if (super.cachedTimeout != null) {
                _call.setTimeout(super.cachedTimeout);
            }
            if (super.cachedPortName != null) {
                _call.setPortName(super.cachedPortName);
            }
            java.util.Enumeration keys = super.cachedProperties.keys();
            while (keys.hasMoreElements()) {
                java.lang.String key = (java.lang.String) keys.nextElement();
                _call.setProperty(key, super.cachedProperties.get(key));
            }
            // All the type mapping information is registered
            // when the first call is made.
            // The type mapping information is actually registered in
            // the TypeMappingRegistry of the service, which
            // is the reason why registration is only needed for the first call.
            synchronized (this) {
                if (firstCall()) {
                    // must set encoding style before registering serializers
                    _call.setEncodingStyle(null);
                    for (int i = 0; i < cachedSerFactories.size(); ++i) {
                        java.lang.Class cls = (java.lang.Class) cachedSerClasses.get(i);
                        javax.xml.namespace.QName qName =
                                (javax.xml.namespace.QName) cachedSerQNames.get(i);
                        java.lang.Object x = cachedSerFactories.get(i);
                        if (x instanceof Class) {
                            java.lang.Class sf = (java.lang.Class)
                                 cachedSerFactories.get(i);
                            java.lang.Class df = (java.lang.Class)
                                 cachedDeserFactories.get(i);
                            _call.registerTypeMapping(cls, qName, sf, df, false);
                        }
                        else if (x instanceof javax.xml.rpc.encoding.SerializerFactory) {
                            org.apache.axis.encoding.SerializerFactory sf = (org.apache.axis.encoding.SerializerFactory)
                                 cachedSerFactories.get(i);
                            org.apache.axis.encoding.DeserializerFactory df = (org.apache.axis.encoding.DeserializerFactory)
                                 cachedDeserFactories.get(i);
                            _call.registerTypeMapping(cls, qName, sf, df, false);
                        }
                    }
                }
            }
            return _call;
        }
        catch (java.lang.Throwable _t) {
            throw new org.apache.axis.AxisFault("Failure trying to get the Call object", _t);
        }
    }

    public java.lang.String desencriptar(java.lang.String valor) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[0]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "desencriptar"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {valor});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (java.lang.String) _resp;
            } catch (java.lang.Exception _exception) {
                return (java.lang.String) org.apache.axis.utils.JavaUtils.convert(_resp, java.lang.String.class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public java.lang.String encriptar(java.lang.String valor) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[1]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "encriptar"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {valor});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (java.lang.String) _resp;
            } catch (java.lang.Exception _exception) {
                return (java.lang.String) org.apache.axis.utils.JavaUtils.convert(_resp, java.lang.String.class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.PersonaWsBean[] buscarPersonas(java.lang.String coArea, java.lang.String coPuesTrab) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[2]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "buscarPersonas"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {coArea, coPuesTrab});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.PersonaWsBean[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.PersonaWsBean[]) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.PersonaWsBean[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.PuestoWsBean[] listarPuestos() throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[3]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "listarPuestos"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.PuestoWsBean[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.PuestoWsBean[]) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.PuestoWsBean[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public java.lang.String[] obtenerCodigos(java.lang.String nombreCompleto) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[4]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "obtenerCodigos"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {nombreCompleto});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (java.lang.String[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (java.lang.String[]) org.apache.axis.utils.JavaUtils.convert(_resp, java.lang.String[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.SeccionWsBean[] listarAreasSeccion() throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[5]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "listarAreasSeccion"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.SeccionWsBean[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.SeccionWsBean[]) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.SeccionWsBean[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.EscalamientoWSBean obtenerEscalamientoPorColaborador(java.lang.String codigo) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[6]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "obtenerEscalamientoPorColaborador"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {codigo});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.EscalamientoWSBean) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.EscalamientoWSBean) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.EscalamientoWSBean.class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public java.lang.String obtenerNombreCompleto(java.lang.String codTrabajador) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[7]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "obtenerNombreCompleto"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {codTrabajador});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (java.lang.String) _resp;
            } catch (java.lang.Exception _exception) {
                return (java.lang.String) org.apache.axis.utils.JavaUtils.convert(_resp, java.lang.String.class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public void init() throws java.rmi.RemoteException {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[8]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "init"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        extractAttachments(_call);
  } catch (org.apache.axis.AxisFault axisFaultException) {
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.PersonaWsBean[] buscarPersonasPorCodigoNombre(java.lang.String codigonombre) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[9]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "buscarPersonasPorCodigoNombre"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {codigonombre});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.PersonaWsBean[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.PersonaWsBean[]) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.PersonaWsBean[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.PuestoWsBean obtenerPuesto(java.lang.String codTrabajador) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[10]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "obtenerPuesto"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {codTrabajador});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.PuestoWsBean) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.PuestoWsBean) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.PuestoWsBean.class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.PersonaWsBean[] obtenerPersonasPorCodigoColaborador(java.lang.String[] lstCodigos) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[11]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "obtenerPersonasPorCodigoColaborador"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {lstCodigos});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.PersonaWsBean[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.PersonaWsBean[]) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.PersonaWsBean[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public pe.com.bvl.ssc.ws.ws.AreaWsBean[] listarAreas() throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[12]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "listarAreas"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (pe.com.bvl.ssc.ws.ws.AreaWsBean[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (pe.com.bvl.ssc.ws.ws.AreaWsBean[]) org.apache.axis.utils.JavaUtils.convert(_resp, pe.com.bvl.ssc.ws.ws.AreaWsBean[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

    public java.lang.String[] obtenerUsuario(java.lang.String codTrabajador) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore {
        if (super.cachedEndpoint == null) {
            throw new org.apache.axis.NoEndPointException();
        }
        org.apache.axis.client.Call _call = createCall();
        _call.setOperation(_operations[13]);
        _call.setUseSOAPAction(true);
        _call.setSOAPActionURI("");
        _call.setEncodingStyle(null);
        _call.setProperty(org.apache.axis.client.Call.SEND_TYPE_ATTR, Boolean.FALSE);
        _call.setProperty(org.apache.axis.AxisEngine.PROP_DOMULTIREFS, Boolean.FALSE);
        _call.setSOAPVersion(org.apache.axis.soap.SOAPConstants.SOAP11_CONSTANTS);
        _call.setOperationName(new javax.xml.namespace.QName("http://ws.ws.ssc.bvl.com.pe", "obtenerUsuario"));

        setRequestHeaders(_call);
        setAttachments(_call);
 try {        java.lang.Object _resp = _call.invoke(new java.lang.Object[] {codTrabajador});

        if (_resp instanceof java.rmi.RemoteException) {
            throw (java.rmi.RemoteException)_resp;
        }
        else {
            extractAttachments(_call);
            try {
                return (java.lang.String[]) _resp;
            } catch (java.lang.Exception _exception) {
                return (java.lang.String[]) org.apache.axis.utils.JavaUtils.convert(_resp, java.lang.String[].class);
            }
        }
  } catch (org.apache.axis.AxisFault axisFaultException) {
    if (axisFaultException.detail != null) {
        if (axisFaultException.detail instanceof java.rmi.RemoteException) {
              throw (java.rmi.RemoteException) axisFaultException.detail;
         }
        if (axisFaultException.detail instanceof pe.com.bvl.ssc.ws.ws.ExceptionCore) {
              throw (pe.com.bvl.ssc.ws.ws.ExceptionCore) axisFaultException.detail;
         }
   }
  throw axisFaultException;
}
    }

}
