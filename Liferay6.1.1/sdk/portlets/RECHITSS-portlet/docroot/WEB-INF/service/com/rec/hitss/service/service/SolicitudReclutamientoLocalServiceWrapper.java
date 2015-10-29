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

package com.rec.hitss.service.service;

import com.liferay.portal.service.ServiceWrapper;

/**
 * <p>
 * This class is a wrapper for {@link SolicitudReclutamientoLocalService}.
 * </p>
 *
 * @author    Danielle
 * @see       SolicitudReclutamientoLocalService
 * @generated
 */
public class SolicitudReclutamientoLocalServiceWrapper
	implements SolicitudReclutamientoLocalService,
		ServiceWrapper<SolicitudReclutamientoLocalService> {
	public SolicitudReclutamientoLocalServiceWrapper(
		SolicitudReclutamientoLocalService solicitudReclutamientoLocalService) {
		_solicitudReclutamientoLocalService = solicitudReclutamientoLocalService;
	}

	/**
	* Adds the solicitud reclutamiento to the database. Also notifies the appropriate model listeners.
	*
	* @param solicitudReclutamiento the solicitud reclutamiento
	* @return the solicitud reclutamiento that was added
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento addSolicitudReclutamiento(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.addSolicitudReclutamiento(solicitudReclutamiento);
	}

	/**
	* Creates a new solicitud reclutamiento with the primary key. Does not add the solicitud reclutamiento to the database.
	*
	* @param solicitudReclutamientoId the primary key for the new solicitud reclutamiento
	* @return the new solicitud reclutamiento
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento createSolicitudReclutamiento(
		long solicitudReclutamientoId) {
		return _solicitudReclutamientoLocalService.createSolicitudReclutamiento(solicitudReclutamientoId);
	}

	/**
	* Deletes the solicitud reclutamiento with the primary key from the database. Also notifies the appropriate model listeners.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento that was removed
	* @throws PortalException if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento deleteSolicitudReclutamiento(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.deleteSolicitudReclutamiento(solicitudReclutamientoId);
	}

	/**
	* Deletes the solicitud reclutamiento from the database. Also notifies the appropriate model listeners.
	*
	* @param solicitudReclutamiento the solicitud reclutamiento
	* @return the solicitud reclutamiento that was removed
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento deleteSolicitudReclutamiento(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.deleteSolicitudReclutamiento(solicitudReclutamiento);
	}

	public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
		return _solicitudReclutamientoLocalService.dynamicQuery();
	}

	/**
	* Performs a dynamic query on the database and returns the matching rows.
	*
	* @param dynamicQuery the dynamic query
	* @return the matching rows
	* @throws SystemException if a system exception occurred
	*/
	@SuppressWarnings("rawtypes")
	public java.util.List dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.dynamicQuery(dynamicQuery);
	}

	/**
	* Performs a dynamic query on the database and returns a range of the matching rows.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	* </p>
	*
	* @param dynamicQuery the dynamic query
	* @param start the lower bound of the range of model instances
	* @param end the upper bound of the range of model instances (not inclusive)
	* @return the range of matching rows
	* @throws SystemException if a system exception occurred
	*/
	@SuppressWarnings("rawtypes")
	public java.util.List dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end) throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.dynamicQuery(dynamicQuery,
			start, end);
	}

	/**
	* Performs a dynamic query on the database and returns an ordered range of the matching rows.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	* </p>
	*
	* @param dynamicQuery the dynamic query
	* @param start the lower bound of the range of model instances
	* @param end the upper bound of the range of model instances (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching rows
	* @throws SystemException if a system exception occurred
	*/
	@SuppressWarnings("rawtypes")
	public java.util.List dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.dynamicQuery(dynamicQuery,
			start, end, orderByComparator);
	}

	/**
	* Returns the number of rows that match the dynamic query.
	*
	* @param dynamicQuery the dynamic query
	* @return the number of rows that match the dynamic query
	* @throws SystemException if a system exception occurred
	*/
	public long dynamicQueryCount(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.dynamicQueryCount(dynamicQuery);
	}

	public com.rec.hitss.service.model.SolicitudReclutamiento fetchSolicitudReclutamiento(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.fetchSolicitudReclutamiento(solicitudReclutamientoId);
	}

	/**
	* Returns the solicitud reclutamiento with the primary key.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento
	* @throws PortalException if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento getSolicitudReclutamiento(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.getSolicitudReclutamiento(solicitudReclutamientoId);
	}

	public com.liferay.portal.model.PersistedModel getPersistedModel(
		java.io.Serializable primaryKeyObj)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.getPersistedModel(primaryKeyObj);
	}

	/**
	* Returns a range of all the solicitud reclutamientos.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	* </p>
	*
	* @param start the lower bound of the range of solicitud reclutamientos
	* @param end the upper bound of the range of solicitud reclutamientos (not inclusive)
	* @return the range of solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> getSolicitudReclutamientos(
		int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.getSolicitudReclutamientos(start,
			end);
	}

	/**
	* Returns the number of solicitud reclutamientos.
	*
	* @return the number of solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public int getSolicitudReclutamientosCount()
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.getSolicitudReclutamientosCount();
	}

	/**
	* Updates the solicitud reclutamiento in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
	*
	* @param solicitudReclutamiento the solicitud reclutamiento
	* @return the solicitud reclutamiento that was updated
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento updateSolicitudReclutamiento(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.updateSolicitudReclutamiento(solicitudReclutamiento);
	}

	/**
	* Updates the solicitud reclutamiento in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
	*
	* @param solicitudReclutamiento the solicitud reclutamiento
	* @param merge whether to merge the solicitud reclutamiento with the current session. See {@link com.liferay.portal.service.persistence.BatchSession#update(com.liferay.portal.kernel.dao.orm.Session, com.liferay.portal.model.BaseModel, boolean)} for an explanation.
	* @return the solicitud reclutamiento that was updated
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento updateSolicitudReclutamiento(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento,
		boolean merge)
		throws com.liferay.portal.kernel.exception.SystemException {
		return _solicitudReclutamientoLocalService.updateSolicitudReclutamiento(solicitudReclutamiento,
			merge);
	}

	/**
	* Returns the Spring bean ID for this bean.
	*
	* @return the Spring bean ID for this bean
	*/
	public java.lang.String getBeanIdentifier() {
		return _solicitudReclutamientoLocalService.getBeanIdentifier();
	}

	/**
	* Sets the Spring bean ID for this bean.
	*
	* @param beanIdentifier the Spring bean ID for this bean
	*/
	public void setBeanIdentifier(java.lang.String beanIdentifier) {
		_solicitudReclutamientoLocalService.setBeanIdentifier(beanIdentifier);
	}

	public java.lang.Object invokeMethod(java.lang.String name,
		java.lang.String[] parameterTypes, java.lang.Object[] arguments)
		throws java.lang.Throwable {
		return _solicitudReclutamientoLocalService.invokeMethod(name,
			parameterTypes, arguments);
	}

	/**
	 * @deprecated Renamed to {@link #getWrappedService}
	 */
	public SolicitudReclutamientoLocalService getWrappedSolicitudReclutamientoLocalService() {
		return _solicitudReclutamientoLocalService;
	}

	/**
	 * @deprecated Renamed to {@link #setWrappedService}
	 */
	public void setWrappedSolicitudReclutamientoLocalService(
		SolicitudReclutamientoLocalService solicitudReclutamientoLocalService) {
		_solicitudReclutamientoLocalService = solicitudReclutamientoLocalService;
	}

	public SolicitudReclutamientoLocalService getWrappedService() {
		return _solicitudReclutamientoLocalService;
	}

	public void setWrappedService(
		SolicitudReclutamientoLocalService solicitudReclutamientoLocalService) {
		_solicitudReclutamientoLocalService = solicitudReclutamientoLocalService;
	}

	private SolicitudReclutamientoLocalService _solicitudReclutamientoLocalService;
}