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

import com.liferay.portal.kernel.bean.AutoEscapeBeanHandler;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.impl.BaseModelImpl;

import com.rec.hitss.service.service.SolicitudReclutamientoLocalServiceUtil;

import java.io.Serializable;

import java.lang.reflect.Proxy;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Danielle
 */
public class SolicitudReclutamientoClp extends BaseModelImpl<SolicitudReclutamiento>
	implements SolicitudReclutamiento {
	public SolicitudReclutamientoClp() {
	}

	public Class<?> getModelClass() {
		return SolicitudReclutamiento.class;
	}

	public String getModelClassName() {
		return SolicitudReclutamiento.class.getName();
	}

	public long getPrimaryKey() {
		return _solicitudReclutamientoId;
	}

	public void setPrimaryKey(long primaryKey) {
		setSolicitudReclutamientoId(primaryKey);
	}

	public Serializable getPrimaryKeyObj() {
		return new Long(_solicitudReclutamientoId);
	}

	public void setPrimaryKeyObj(Serializable primaryKeyObj) {
		setPrimaryKey(((Long)primaryKeyObj).longValue());
	}

	@Override
	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("solicitudReclutamientoId", getSolicitudReclutamientoId());
		attributes.put("puesto", getPuesto());

		return attributes;
	}

	@Override
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

	public BaseModel<?> getSolicitudReclutamientoRemoteModel() {
		return _solicitudReclutamientoRemoteModel;
	}

	public void setSolicitudReclutamientoRemoteModel(
		BaseModel<?> solicitudReclutamientoRemoteModel) {
		_solicitudReclutamientoRemoteModel = solicitudReclutamientoRemoteModel;
	}

	public void persist() throws SystemException {
		if (this.isNew()) {
			SolicitudReclutamientoLocalServiceUtil.addSolicitudReclutamiento(this);
		}
		else {
			SolicitudReclutamientoLocalServiceUtil.updateSolicitudReclutamiento(this);
		}
	}

	@Override
	public SolicitudReclutamiento toEscapedModel() {
		return (SolicitudReclutamiento)Proxy.newProxyInstance(SolicitudReclutamiento.class.getClassLoader(),
			new Class[] { SolicitudReclutamiento.class },
			new AutoEscapeBeanHandler(this));
	}

	@Override
	public Object clone() {
		SolicitudReclutamientoClp clone = new SolicitudReclutamientoClp();

		clone.setSolicitudReclutamientoId(getSolicitudReclutamientoId());
		clone.setPuesto(getPuesto());

		return clone;
	}

	public int compareTo(SolicitudReclutamiento solicitudReclutamiento) {
		int value = 0;

		value = getPuesto().compareTo(solicitudReclutamiento.getPuesto());

		if (value != 0) {
			return value;
		}

		return 0;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		}

		SolicitudReclutamientoClp solicitudReclutamiento = null;

		try {
			solicitudReclutamiento = (SolicitudReclutamientoClp)obj;
		}
		catch (ClassCastException cce) {
			return false;
		}

		long primaryKey = solicitudReclutamiento.getPrimaryKey();

		if (getPrimaryKey() == primaryKey) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		return (int)getPrimaryKey();
	}

	@Override
	public String toString() {
		StringBundler sb = new StringBundler(5);

		sb.append("{solicitudReclutamientoId=");
		sb.append(getSolicitudReclutamientoId());
		sb.append(", puesto=");
		sb.append(getPuesto());
		sb.append("}");

		return sb.toString();
	}

	public String toXmlString() {
		StringBundler sb = new StringBundler(10);

		sb.append("<model><model-name>");
		sb.append("com.rec.hitss.service.model.SolicitudReclutamiento");
		sb.append("</model-name>");

		sb.append(
			"<column><column-name>solicitudReclutamientoId</column-name><column-value><![CDATA[");
		sb.append(getSolicitudReclutamientoId());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>puesto</column-name><column-value><![CDATA[");
		sb.append(getPuesto());
		sb.append("]]></column-value></column>");

		sb.append("</model>");

		return sb.toString();
	}

	private long _solicitudReclutamientoId;
	private String _puesto;
	private BaseModel<?> _solicitudReclutamientoRemoteModel;
}