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

package com.rec.hitss.service.model.impl;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import com.rec.hitss.service.model.SolicitudReclutamiento;

import java.io.Serializable;

import java.util.Date;

/**
 * The cache model class for representing SolicitudReclutamiento in entity cache.
 *
 * @author Danielle
 * @see SolicitudReclutamiento
 * @generated
 */
public class SolicitudReclutamientoCacheModel implements CacheModel<SolicitudReclutamiento>,
	Serializable {
	@Override
	public String toString() {
		StringBundler sb = new StringBundler(13);

		sb.append("{solicitudReclutamientoId=");
		sb.append(solicitudReclutamientoId);
		sb.append(", puesto=");
		sb.append(puesto);
		sb.append(", userNameCreate=");
		sb.append(userNameCreate);
		sb.append(", createDate=");
		sb.append(createDate);
		sb.append(", userNameUpdate=");
		sb.append(userNameUpdate);
		sb.append(", modifiedDate=");
		sb.append(modifiedDate);
		sb.append("}");

		return sb.toString();
	}

	public SolicitudReclutamiento toEntityModel() {
		SolicitudReclutamientoImpl solicitudReclutamientoImpl = new SolicitudReclutamientoImpl();

		solicitudReclutamientoImpl.setSolicitudReclutamientoId(solicitudReclutamientoId);

		if (puesto == null) {
			solicitudReclutamientoImpl.setPuesto(StringPool.BLANK);
		}
		else {
			solicitudReclutamientoImpl.setPuesto(puesto);
		}

		if (userNameCreate == null) {
			solicitudReclutamientoImpl.setUserNameCreate(StringPool.BLANK);
		}
		else {
			solicitudReclutamientoImpl.setUserNameCreate(userNameCreate);
		}

		if (createDate == Long.MIN_VALUE) {
			solicitudReclutamientoImpl.setCreateDate(null);
		}
		else {
			solicitudReclutamientoImpl.setCreateDate(new Date(createDate));
		}

		if (userNameUpdate == null) {
			solicitudReclutamientoImpl.setUserNameUpdate(StringPool.BLANK);
		}
		else {
			solicitudReclutamientoImpl.setUserNameUpdate(userNameUpdate);
		}

		if (modifiedDate == Long.MIN_VALUE) {
			solicitudReclutamientoImpl.setModifiedDate(null);
		}
		else {
			solicitudReclutamientoImpl.setModifiedDate(new Date(modifiedDate));
		}

		solicitudReclutamientoImpl.resetOriginalValues();

		return solicitudReclutamientoImpl;
	}

	public long solicitudReclutamientoId;
	public String puesto;
	public String userNameCreate;
	public long createDate;
	public String userNameUpdate;
	public long modifiedDate;
}