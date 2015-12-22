/**
 * SeguridadType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package pe.com.bvl.ssc.ws.ws;

public interface SeguridadType extends java.rmi.Remote {
    public java.lang.String desencriptar(java.lang.String valor) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public java.lang.String encriptar(java.lang.String valor) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public pe.com.bvl.ssc.ws.ws.PersonaWsBean[] buscarPersonas(java.lang.String coArea, java.lang.String coPuesTrab) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public pe.com.bvl.ssc.ws.ws.PuestoWsBean[] listarPuestos() throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public java.lang.String[] obtenerCodigos(java.lang.String nombreCompleto) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public pe.com.bvl.ssc.ws.ws.SeccionWsBean[] listarAreasSeccion() throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public pe.com.bvl.ssc.ws.ws.EscalamientoWSBean obtenerEscalamientoPorColaborador(java.lang.String codigo) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public java.lang.String obtenerNombreCompleto(java.lang.String codTrabajador) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public void init() throws java.rmi.RemoteException;
    public pe.com.bvl.ssc.ws.ws.PersonaWsBean[] buscarPersonasPorCodigoNombre(java.lang.String codigonombre) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public pe.com.bvl.ssc.ws.ws.PuestoWsBean obtenerPuesto(java.lang.String codTrabajador) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public pe.com.bvl.ssc.ws.ws.PersonaWsBean[] obtenerPersonasPorCodigoColaborador(java.lang.String[] lstCodigos) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public pe.com.bvl.ssc.ws.ws.AreaWsBean[] listarAreas() throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
    public java.lang.String[] obtenerUsuario(java.lang.String codTrabajador) throws java.rmi.RemoteException, pe.com.bvl.ssc.ws.ws.ExceptionCore;
}
