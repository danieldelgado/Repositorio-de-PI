package com.rec.hitss.service.util;

import java.util.Map;

public class BeanRespuesta {

	private String finalizoExisto;
	private Long idRegistro;
	private String campoValidate;
	private boolean variasValidaciones;
	private String mensajeSimple;
	private Map<String, String> mensajes;
	
	public BeanRespuesta() {
		
	}

	public BeanRespuesta(String campoValidate, Map<String, String> mensajes) {
		this.campoValidate = campoValidate;
		this.variasValidaciones = true;
		this.mensajeSimple = null;
		this.mensajes = mensajes;
	}
	
	public BeanRespuesta(String campoValidate, boolean variasValidaciones,String mensajeSimple, Map<String, String> mensajes) {
		this.campoValidate = campoValidate;
		this.variasValidaciones = variasValidaciones;
		this.mensajeSimple = mensajeSimple;
		this.mensajes = mensajes;
	}
	

	public BeanRespuesta(String campoValidate, String mensajeSimple) {
		this.campoValidate = campoValidate;
		this.variasValidaciones = false;
		this.mensajeSimple = mensajeSimple;
		this.mensajes = null;
	}
	
	public String getCampoValidate() {
		return campoValidate;
	}
	public void setCampoValidate(String campoValidate) {
		this.campoValidate = campoValidate;
	}
	public boolean isVariasValidaciones() {
		return variasValidaciones;
	}
	public void setVariasValidaciones(boolean variasValidaciones) {
		this.variasValidaciones = variasValidaciones;
	}
	public Map<String, String> getMensajes() {
		return mensajes;
	}
	public void setMensajes(Map<String, String> mensajes) {
		this.mensajes = mensajes;
	}
	public String getMensajeSimple() {
		return mensajeSimple;
	}
	public void setMensajeSimple(String mensajeSimple) {
		this.mensajeSimple = mensajeSimple;
	}

	public String getFinalizoExisto() {
		return finalizoExisto;
	}

	public void setFinalizoExisto(String finalizoExisto) {
		this.finalizoExisto = finalizoExisto;
	}

	public Long getIdRegistro() {
		return idRegistro;
	}

	public void setIdRegistro(Long idRegistro) {
		this.idRegistro = idRegistro;
	}

}
