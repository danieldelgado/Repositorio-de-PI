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

package com.rec.hitss.service.service.persistence;

import com.liferay.portal.service.persistence.BasePersistence;

import com.rec.hitss.service.model.SolicitudReclutamiento;

/**
 * The persistence interface for the solicitud reclutamiento service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Danielle
 * @see SolicitudReclutamientoPersistenceImpl
 * @see SolicitudReclutamientoUtil
 * @generated
 */
public interface SolicitudReclutamientoPersistence extends BasePersistence<SolicitudReclutamiento> {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this interface directly. Always use {@link SolicitudReclutamientoUtil} to access the solicitud reclutamiento persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this interface.
	 */

	/**
	* Caches the solicitud reclutamiento in the entity cache if it is enabled.
	*
	* @param solicitudReclutamiento the solicitud reclutamiento
	*/
	public void cacheResult(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento);

	/**
	* Caches the solicitud reclutamientos in the entity cache if it is enabled.
	*
	* @param solicitudReclutamientos the solicitud reclutamientos
	*/
	public void cacheResult(
		java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> solicitudReclutamientos);

	/**
	* Creates a new solicitud reclutamiento with the primary key. Does not add the solicitud reclutamiento to the database.
	*
	* @param solicitudReclutamientoId the primary key for the new solicitud reclutamiento
	* @return the new solicitud reclutamiento
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento create(
		long solicitudReclutamientoId);

	/**
	* Removes the solicitud reclutamiento with the primary key from the database. Also notifies the appropriate model listeners.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento that was removed
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento remove(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException;

	public com.rec.hitss.service.model.SolicitudReclutamiento updateImpl(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento,
		boolean merge)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns the solicitud reclutamiento with the primary key or throws a {@link com.rec.hitss.service.NoSuchSolicitudReclutamientoException} if it could not be found.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento findByPrimaryKey(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException;

	/**
	* Returns the solicitud reclutamiento with the primary key or returns <code>null</code> if it could not be found.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento, or <code>null</code> if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento fetchByPrimaryKey(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns all the solicitud reclutamientos where puesto = &#63;.
	*
	* @param puesto the puesto
	* @return the matching solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findByPuesto(
		java.lang.String puesto)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns a range of all the solicitud reclutamientos where puesto = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	* </p>
	*
	* @param puesto the puesto
	* @param start the lower bound of the range of solicitud reclutamientos
	* @param end the upper bound of the range of solicitud reclutamientos (not inclusive)
	* @return the range of matching solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findByPuesto(
		java.lang.String puesto, int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns an ordered range of all the solicitud reclutamientos where puesto = &#63;.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	* </p>
	*
	* @param puesto the puesto
	* @param start the lower bound of the range of solicitud reclutamientos
	* @param end the upper bound of the range of solicitud reclutamientos (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of matching solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findByPuesto(
		java.lang.String puesto, int start, int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns the first solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching solicitud reclutamiento
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento findByPuesto_First(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException;

	/**
	* Returns the first solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching solicitud reclutamiento, or <code>null</code> if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento fetchByPuesto_First(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns the last solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching solicitud reclutamiento
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento findByPuesto_Last(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException;

	/**
	* Returns the last solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching solicitud reclutamiento, or <code>null</code> if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento fetchByPuesto_Last(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns the solicitud reclutamientos before and after the current solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param solicitudReclutamientoId the primary key of the current solicitud reclutamiento
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the previous, current, and next solicitud reclutamiento
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public com.rec.hitss.service.model.SolicitudReclutamiento[] findByPuesto_PrevAndNext(
		long solicitudReclutamientoId, java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException;

	/**
	* Returns all the solicitud reclutamientos.
	*
	* @return the solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findAll()
		throws com.liferay.portal.kernel.exception.SystemException;

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
	public java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findAll(
		int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns an ordered range of all the solicitud reclutamientos.
	*
	* <p>
	* Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set.
	* </p>
	*
	* @param start the lower bound of the range of solicitud reclutamientos
	* @param end the upper bound of the range of solicitud reclutamientos (not inclusive)
	* @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
	* @return the ordered range of solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findAll(
		int start, int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Removes all the solicitud reclutamientos where puesto = &#63; from the database.
	*
	* @param puesto the puesto
	* @throws SystemException if a system exception occurred
	*/
	public void removeByPuesto(java.lang.String puesto)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Removes all the solicitud reclutamientos from the database.
	*
	* @throws SystemException if a system exception occurred
	*/
	public void removeAll()
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns the number of solicitud reclutamientos where puesto = &#63;.
	*
	* @param puesto the puesto
	* @return the number of matching solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public int countByPuesto(java.lang.String puesto)
		throws com.liferay.portal.kernel.exception.SystemException;

	/**
	* Returns the number of solicitud reclutamientos.
	*
	* @return the number of solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public int countAll()
		throws com.liferay.portal.kernel.exception.SystemException;
}