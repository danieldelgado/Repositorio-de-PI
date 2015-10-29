/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.rec.hitss.service.model;

import com.liferay.portal.model.ModelWrapper;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * This class is a wrapper for {@link SolicitudReclutamiento}.
 * </p>
 *
 * @author    Danielle
 * @see       SolicitudReclutamiento
 * @generated
 */
public class SolicitudReclutamientoWrapper implements SolicitudReclutamiento,
	ModelWrapper<SolicitudReclutamiento> {
	public SolicitudReclutamientoWrapper(
		SolicitudReclutamiento solicitudReclutamiento) {
		_solicitudReclutamiento = solicitudReclutamiento;
	}

	public Class<?> getModelClass() {
		return SolicitudReclutamiento.class;
	}

	public String getModelClassName() {
		return SolicitudReclutamiento.class.getName();
	}

	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("solicitudReclutamientoId", getSolicitudReclutamientoId());
		attributes.put("puesto", getPuesto());
		attributes.put("userNameCreate", getUserNameCreate());
		attributes.put("createDate", getCreateDate());
		attributes.put("userNameUpdate", getUserNameUpdate());
		attributes.put("modifiedDate", getModifiedDate());

		return attributes;
	}

	public void setModelAttributes(Map<String, Object> attributes) {
		Long solicitudReclutamientoId = (Long)attributes.get(
				"solicitudReclutamientoId");

		if (solicitudReclutamientoId != null) {
			setSolicitudReclutamientoId(solicitudReclutamientoId);
		}

		String puesto = (String)attributes.get("puesto");

		if (puesto != null) {
			setPuesto(puesto);
		}

		String userNameCreate = (String)attributes.get("userNameCreate");

		if (userNameCreate != null) {
			setUserNameCreate(userNameCreate);
		}

		Date createDate = (Date)attributes.get("createDate");

		if (createDate != null) {
			setCreateDate(createDate);
		}

		String userNameUpdate = (String)attributes.get("userNameUpdate");

		if (userNameUpdate != null) {
			setUserNameUpdate(userNameUpdate);
		}

		Date modifiedDate = (Date)attributes.get("modifiedDate");

		if (modifiedDate != null) {
			setModifiedDate(modifiedDate);
		}
	}

	/**
	* Returns the primary key of this solicitud reclutamiento.
	*
	* @return the primary key of this solicitud reclutamiento
	*/
	public long getPrimaryKey() {
		return _solicitudReclutamiento.getPrimaryKey();
	}

	/**
	* Sets the primary key of this solicitud reclutamiento.
	*
	* @param primaryKey the primary key of this solicitud reclutamiento
	*/
	public void setPrimaryKey(long primaryKey) {
		_solicitudReclutamiento.setPrimaryKey(primaryKey);
	}

	/**
	* Returns the solicitud reclutamiento ID of this solicitud reclutamiento.
	*
	* @return the solicitud reclutamiento ID of this solicitud reclutamiento
	*/
	public long getSolicitudReclutamientoId() {
		return _solicitudReclutamiento.getSolicitudReclutamientoId();
	}

	/**
	* Sets the solicitud reclutamiento ID of this solicitud reclutamiento.
	*
	* @param solicitudReclutamientoId the solicitud reclutamiento ID of this solicitud reclutamiento
	*/
	public void setSolicitudReclutamientoId(long solicitudReclutamientoId) {
		_solicitudReclutamiento.setSolicitudReclutamientoId(solicitudReclutamientoId);
	}

	/**
	* Returns the puesto of this solicitud reclutamiento.
	*
	* @return the puesto of this solicitud reclutamiento
	*/
	public java.lang.String getPuesto() {
		return _solicitudReclutamiento.getPuesto();
	}

	/**
	* Sets the puesto of this solicitud reclutamiento.
	*
	* @param puesto the puesto of this solicitud reclutamiento
	*/
	public void setPuesto(java.lang.String puesto) {
		_solicitudReclutamiento.setPuesto(puesto);
	}

	/**
	* Returns the user name create of this solicitud reclutamiento.
	*
	* @return the user name create of this solicitud reclutamiento
	*/
	public java.lang.String getUserNameCreate() {
		return _solicitudReclutamiento.getUserNameCreate();
	}

	/**
	* Sets the user name create of this solicitud reclutamiento.
	*
	* @param userNameCreate the user name create of this solicitud reclutamiento
	*/
	public void setUserNameCreate(java.lang.String userNameCreate) {
		_solicitudReclutamiento.setUserNameCreate(userNameCreate);
	}

	/**
	* Returns the create date of this solicitud reclutamiento.
	*
	* @return the create date of this solicitud reclutamiento
	*/
	public java.util.Date getCreateDate() {
		return _solicitudReclutamiento.getCreateDate();
	}

	/**
	* Sets the create date of this solicitud reclutamiento.
	*
	* @param createDate the create date of this solicitud reclutamiento
	*/
	public void setCreateDate(java.util.Date createDate) {
		_solicitudReclutamiento.setCreateDate(createDate);
	}

	/**
	* Returns the user name update of this solicitud reclutamiento.
	*
	* @return the user name update of this solicitud reclutamiento
	*/
	public java.lang.String getUserNameUpdate() {
		return _solicitudReclutamiento.getUserNameUpdate();
	}

	/**
	* Sets the user name update of this solicitud reclutamiento.
	*
	* @param userNameUpdate the user name update of this solicitud reclutamiento
	*/
	public void setUserNameUpdate(java.lang.String userNameUpdate) {
		_solicitudReclutamiento.setUserNameUpdate(userNameUpdate);
	}

	/**
	* Returns the modified date of this solicitud reclutamiento.
	*
	* @return the modified date of this solicitud reclutamiento
	*/
	public java.util.Date getModifiedDate() {
		return _solicitudReclutamiento.getModifiedDate();
	}

	/**
	* Sets the modified date of this solicitud reclutamiento.
	*
	* @param modifiedDate the modified date of this solicitud reclutamiento
	*/
	public void setModifiedDate(java.util.Date modifiedDate) {
		_solicitudReclutamiento.setModifiedDate(modifiedDate);
	}

	public boolean isNew() {
		return _solicitudReclutamiento.isNew();
	}

	public void setNew(boolean n) {
		_solicitudReclutamiento.setNew(n);
	}

	public boolean isCachedModel() {
		return _solicitudReclutamiento.isCachedModel();
	}

	public void setCachedModel(boolean cachedModel) {
		_solicitudReclutamiento.setCachedModel(cachedModel);
	}

	public boolean isEscapedModel() {
		return _solicitudReclutamiento.isEscapedModel();
	}

	public java.io.Serializable getPrimaryKeyObj() {
		return _solicitudReclutamiento.getPrimaryKeyObj();
	}

	public void setPrimaryKeyObj(java.io.Serializable primaryKeyObj) {
		_solicitudReclutamiento.setPrimaryKeyObj(primaryKeyObj);
	}

	public com.liferay.portlet.expando.model.ExpandoBridge getExpandoBridge() {
		return _solicitudReclutamiento.getExpandoBridge();
	}

	public void setExpandoBridgeAttributes(
		com.liferay.portal.service.ServiceContext serviceContext) {
		_solicitudReclutamiento.setExpandoBridgeAttributes(serviceContext);
	}

	@Override
	public java.lang.Object clone() {
		return new SolicitudReclutamientoWrapper((SolicitudReclutamiento)_solicitudReclutamiento.clone());
	}

	public int compareTo(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento) {
		return _solicitudReclutamiento.compareTo(solicitudReclutamiento);
	}

	@Override
	public int hashCode() {
		return _solicitudReclutamiento.hashCode();
	}

	public com.liferay.portal.model.CacheModel<com.rec.hitss.service.model.SolicitudReclutamiento> toCacheModel() {
		return _solicitudReclutamiento.toCacheModel();
	}

	public com.rec.hitss.service.model.SolicitudReclutamiento toEscapedModel() {
		return new SolicitudReclutamientoWrapper(_solicitudReclutamiento.toEscapedModel());
	}

	@Override
	public java.lang.String toString() {
		return _solicitudReclutamiento.toString();
	}

	public java.lang.String toXmlString() {
		return _solicitudReclutamiento.toXmlString();
	}

	public void persist()
		throws com.liferay.portal.kernel.exception.SystemException {
		_solicitudReclutamiento.persist();
	}

	/**
	 * @deprecated Renamed to {@link #getWrappedModel}
	 */
	public SolicitudReclutamiento getWrappedSolicitudReclutamiento() {
		return _solicitudReclutamiento;
	}

	public SolicitudReclutamiento getWrappedModel() {
		return _solicitudReclutamiento;
	}

	public void resetOriginalValues() {
		_solicitudReclutamiento.resetOriginalValues();
	}

	private SolicitudReclutamiento _solicitudReclutamiento;
}