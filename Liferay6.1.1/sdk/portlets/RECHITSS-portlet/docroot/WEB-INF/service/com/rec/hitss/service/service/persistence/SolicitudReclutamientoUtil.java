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

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import com.rec.hitss.service.model.SolicitudReclutamiento;

import java.util.List;

/**
 * The persistence utility for the solicitud reclutamiento service. This utility wraps {@link SolicitudReclutamientoPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Danielle
 * @see SolicitudReclutamientoPersistence
 * @see SolicitudReclutamientoPersistenceImpl
 * @generated
 */
public class SolicitudReclutamientoUtil {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify this class directly. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
	 */

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#clearCache()
	 */
	public static void clearCache() {
		getPersistence().clearCache();
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#clearCache(com.liferay.portal.model.BaseModel)
	 */
	public static void clearCache(SolicitudReclutamiento solicitudReclutamiento) {
		getPersistence().clearCache(solicitudReclutamiento);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#countWithDynamicQuery(DynamicQuery)
	 */
	public long countWithDynamicQuery(DynamicQuery dynamicQuery)
		throws SystemException {
		return getPersistence().countWithDynamicQuery(dynamicQuery);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery)
	 */
	public static List<SolicitudReclutamiento> findWithDynamicQuery(
		DynamicQuery dynamicQuery) throws SystemException {
		return getPersistence().findWithDynamicQuery(dynamicQuery);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
	 */
	public static List<SolicitudReclutamiento> findWithDynamicQuery(
		DynamicQuery dynamicQuery, int start, int end)
		throws SystemException {
		return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
	 */
	public static List<SolicitudReclutamiento> findWithDynamicQuery(
		DynamicQuery dynamicQuery, int start, int end,
		OrderByComparator orderByComparator) throws SystemException {
		return getPersistence()
				   .findWithDynamicQuery(dynamicQuery, start, end,
			orderByComparator);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, boolean)
	 */
	public static SolicitudReclutamiento update(
		SolicitudReclutamiento solicitudReclutamiento, boolean merge)
		throws SystemException {
		return getPersistence().update(solicitudReclutamiento, merge);
	}

	/**
	 * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, boolean, ServiceContext)
	 */
	public static SolicitudReclutamiento update(
		SolicitudReclutamiento solicitudReclutamiento, boolean merge,
		ServiceContext serviceContext) throws SystemException {
		return getPersistence()
				   .update(solicitudReclutamiento, merge, serviceContext);
	}

	/**
	* Caches the solicitud reclutamiento in the entity cache if it is enabled.
	*
	* @param solicitudReclutamiento the solicitud reclutamiento
	*/
	public static void cacheResult(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento) {
		getPersistence().cacheResult(solicitudReclutamiento);
	}

	/**
	* Caches the solicitud reclutamientos in the entity cache if it is enabled.
	*
	* @param solicitudReclutamientos the solicitud reclutamientos
	*/
	public static void cacheResult(
		java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> solicitudReclutamientos) {
		getPersistence().cacheResult(solicitudReclutamientos);
	}

	/**
	* Creates a new solicitud reclutamiento with the primary key. Does not add the solicitud reclutamiento to the database.
	*
	* @param solicitudReclutamientoId the primary key for the new solicitud reclutamiento
	* @return the new solicitud reclutamiento
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento create(
		long solicitudReclutamientoId) {
		return getPersistence().create(solicitudReclutamientoId);
	}

	/**
	* Removes the solicitud reclutamiento with the primary key from the database. Also notifies the appropriate model listeners.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento that was removed
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento remove(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException {
		return getPersistence().remove(solicitudReclutamientoId);
	}

	public static com.rec.hitss.service.model.SolicitudReclutamiento updateImpl(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento,
		boolean merge)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().updateImpl(solicitudReclutamiento, merge);
	}

	/**
	* Returns the solicitud reclutamiento with the primary key or throws a {@link com.rec.hitss.service.NoSuchSolicitudReclutamientoException} if it could not be found.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento findByPrimaryKey(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException {
		return getPersistence().findByPrimaryKey(solicitudReclutamientoId);
	}

	/**
	* Returns the solicitud reclutamiento with the primary key or returns <code>null</code> if it could not be found.
	*
	* @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	* @return the solicitud reclutamiento, or <code>null</code> if a solicitud reclutamiento with the primary key could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento fetchByPrimaryKey(
		long solicitudReclutamientoId)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().fetchByPrimaryKey(solicitudReclutamientoId);
	}

	/**
	* Returns all the solicitud reclutamientos where puesto = &#63;.
	*
	* @param puesto the puesto
	* @return the matching solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public static java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findByPuesto(
		java.lang.String puesto)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findByPuesto(puesto);
	}

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
	public static java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findByPuesto(
		java.lang.String puesto, int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findByPuesto(puesto, start, end);
	}

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
	public static java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findByPuesto(
		java.lang.String puesto, int start, int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence()
				   .findByPuesto(puesto, start, end, orderByComparator);
	}

	/**
	* Returns the first solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching solicitud reclutamiento
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento findByPuesto_First(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException {
		return getPersistence().findByPuesto_First(puesto, orderByComparator);
	}

	/**
	* Returns the first solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the first matching solicitud reclutamiento, or <code>null</code> if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento fetchByPuesto_First(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().fetchByPuesto_First(puesto, orderByComparator);
	}

	/**
	* Returns the last solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching solicitud reclutamiento
	* @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento findByPuesto_Last(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException {
		return getPersistence().findByPuesto_Last(puesto, orderByComparator);
	}

	/**
	* Returns the last solicitud reclutamiento in the ordered set where puesto = &#63;.
	*
	* @param puesto the puesto
	* @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	* @return the last matching solicitud reclutamiento, or <code>null</code> if a matching solicitud reclutamiento could not be found
	* @throws SystemException if a system exception occurred
	*/
	public static com.rec.hitss.service.model.SolicitudReclutamiento fetchByPuesto_Last(
		java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().fetchByPuesto_Last(puesto, orderByComparator);
	}

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
	public static com.rec.hitss.service.model.SolicitudReclutamiento[] findByPuesto_PrevAndNext(
		long solicitudReclutamientoId, java.lang.String puesto,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException,
			com.rec.hitss.service.NoSuchSolicitudReclutamientoException {
		return getPersistence()
				   .findByPuesto_PrevAndNext(solicitudReclutamientoId, puesto,
			orderByComparator);
	}

	/**
	* Returns all the solicitud reclutamientos.
	*
	* @return the solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public static java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findAll()
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findAll();
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
	public static java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findAll(
		int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findAll(start, end);
	}

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
	public static java.util.List<com.rec.hitss.service.model.SolicitudReclutamiento> findAll(
		int start, int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().findAll(start, end, orderByComparator);
	}

	/**
	* Removes all the solicitud reclutamientos where puesto = &#63; from the database.
	*
	* @param puesto the puesto
	* @throws SystemException if a system exception occurred
	*/
	public static void removeByPuesto(java.lang.String puesto)
		throws com.liferay.portal.kernel.exception.SystemException {
		getPersistence().removeByPuesto(puesto);
	}

	/**
	* Removes all the solicitud reclutamientos from the database.
	*
	* @throws SystemException if a system exception occurred
	*/
	public static void removeAll()
		throws com.liferay.portal.kernel.exception.SystemException {
		getPersistence().removeAll();
	}

	/**
	* Returns the number of solicitud reclutamientos where puesto = &#63;.
	*
	* @param puesto the puesto
	* @return the number of matching solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public static int countByPuesto(java.lang.String puesto)
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().countByPuesto(puesto);
	}

	/**
	* Returns the number of solicitud reclutamientos.
	*
	* @return the number of solicitud reclutamientos
	* @throws SystemException if a system exception occurred
	*/
	public static int countAll()
		throws com.liferay.portal.kernel.exception.SystemException {
		return getPersistence().countAll();
	}

	public static SolicitudReclutamientoPersistence getPersistence() {
		if (_persistence == null) {
			_persistence = (SolicitudReclutamientoPersistence)PortletBeanLocatorUtil.locate(com.rec.hitss.service.service.ClpSerializer.getServletContextName(),
					SolicitudReclutamientoPersistence.class.getName());

			ReferenceRegistry.registerReference(SolicitudReclutamientoUtil.class,
				"_persistence");
		}

		return _persistence;
	}

	/**
	 * @deprecated
	 */
	public void setPersistence(SolicitudReclutamientoPersistence persistence) {
	}

	private static SolicitudReclutamientoPersistence _persistence;
}