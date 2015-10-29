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

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * This class is used by SOAP remote services, specifically {@link com.rec.hitss.service.service.http.SolicitudReclutamientoServiceSoap}.
 *
 * @author    Danielle
 * @see       com.rec.hitss.service.service.http.SolicitudReclutamientoServiceSoap
 * @generated
 */
public class SolicitudReclutamientoSoap implements Serializable {
	public static SolicitudReclutamientoSoap toSoapModel(
		SolicitudReclutamiento model) {
		SolicitudReclutamientoSoap soapModel = new SolicitudReclutamientoSoap();

		soapModel.setSolicitudReclutamientoId(model.getSolicitudReclutamientoId());
		soapModel.setPuesto(model.getPuesto());
		soapModel.setUserNameCreate(model.getUserNameCreate());
		soapModel.setCreateDate(model.getCreateDate());
		soapModel.setUserNameUpdate(model.getUserNameUpdate());
		soapModel.setModifiedDate(model.getModifiedDate());

		return soapModel;
	}

	public static SolicitudReclutamientoSoap[] toSoapModels(
		SolicitudReclutamiento[] models) {
		SolicitudReclutamientoSoap[] soapModels = new SolicitudReclutamientoSoap[models.length];

		for (int i = 0; i < models.length; i++) {
			soapModels[i] = toSoapModel(models[i]);
		}

		return soapModels;
	}

	public static SolicitudReclutamientoSoap[][] toSoapModels(
		SolicitudReclutamiento[][] models) {
		SolicitudReclutamientoSoap[][] soapModels = null;

		if (models.length > 0) {
			soapModels = new SolicitudReclutamientoSoap[models.length][models[0].length];
		}
		else {
			soapModels = new SolicitudReclutamientoSoap[0][0];
		}

		for (int i = 0; i < models.length; i++) {
			soapModels[i] = toSoapModels(models[i]);
		}

		return soapModels;
	}

	public static SolicitudReclutamientoSoap[] toSoapModels(
		List<SolicitudReclutamiento> models) {
		List<SolicitudReclutamientoSoap> soapModels = new ArrayList<SolicitudReclutamientoSoap>(models.size());

		for (SolicitudReclutamiento model : models) {
			soapModels.add(toSoapModel(model));
		}

		return soapModels.toArray(new SolicitudReclutamientoSoap[soapModels.size()]);
	}

	public SolicitudReclutamientoSoap() {
	}

	public long getPrimaryKey() {
		return _solicitudReclutamientoId;
	}

	public void setPrimaryKey(long pk) {
		setSolicitudReclutamientoId(pk);
	}

	public long getSolicitudReclutamientoId() {
		return _solicitudReclutamientoId;
	}

	public void setSolicitudReclutamientoId(long solicitudReclutamientoId) {
		_solicitudReclutamientoId = solicitudReclutamientoId;
	}

	public String getPuesto() {
		return _puesto;
	}

	public void setPuesto(String puesto) {
		_puesto = puesto;
	}

	public String getUserNameCreate() {
		return _userNameCreate;
	}

	public void setUserNameCreate(String userNameCreate) {
		_userNameCreate = userNameCreate;
	}

	public Date getCreateDate() {
		return _createDate;
	}

	public void setCreateDate(Date createDate) {
		_createDate = createDate;
	}

	public String getUserNameUpdate() {
		return _userNameUpdate;
	}

	public void setUserNameUpdate(String userNameUpdate) {
		_userNameUpdate = userNameUpdate;
	}

	public Date getModifiedDate() {
		return _modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		_modifiedDate = modifiedDate;
	}

	private long _solicitudReclutamientoId;
	private String _puesto;
	private String _userNameCreate;
	private Date _createDate;
	private String _userNameUpdate;
	private Date _modifiedDate;
}