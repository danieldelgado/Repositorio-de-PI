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

import com.liferay.portal.NoSuchModelException;
import com.liferay.portal.kernel.bean.BeanReference;
import com.liferay.portal.kernel.cache.CacheRegistryUtil;
import com.liferay.portal.kernel.dao.orm.EntityCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderPath;
import com.liferay.portal.kernel.dao.orm.Query;
import com.liferay.portal.kernel.dao.orm.QueryPos;
import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.dao.orm.Session;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.InstanceFactory;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.PropsKeys;
import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.StringUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.model.ModelListener;
import com.liferay.portal.service.persistence.BatchSessionUtil;
import com.liferay.portal.service.persistence.ResourcePersistence;
import com.liferay.portal.service.persistence.UserPersistence;
import com.liferay.portal.service.persistence.impl.BasePersistenceImpl;

import com.rec.hitss.service.NoSuchSolicitudReclutamientoException;
import com.rec.hitss.service.model.SolicitudReclutamiento;
import com.rec.hitss.service.model.impl.SolicitudReclutamientoImpl;
import com.rec.hitss.service.model.impl.SolicitudReclutamientoModelImpl;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * The persistence implementation for the solicitud reclutamiento service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Danielle
 * @see SolicitudReclutamientoPersistence
 * @see SolicitudReclutamientoUtil
 * @generated
 */
public class SolicitudReclutamientoPersistenceImpl extends BasePersistenceImpl<SolicitudReclutamiento>
	implements SolicitudReclutamientoPersistence {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. Always use {@link SolicitudReclutamientoUtil} to access the solicitud reclutamiento persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
	 */
	public static final String FINDER_CLASS_NAME_ENTITY = SolicitudReclutamientoImpl.class.getName();
	public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List1";
	public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
		".List2";
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_BY_PUESTO = new FinderPath(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoModelImpl.FINDER_CACHE_ENABLED,
			SolicitudReclutamientoImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findByPuesto",
			new String[] {
				String.class.getName(),
				
			"java.lang.Integer", "java.lang.Integer",
				"com.liferay.portal.kernel.util.OrderByComparator"
			});
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_PUESTO =
		new FinderPath(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoModelImpl.FINDER_CACHE_ENABLED,
			SolicitudReclutamientoImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findByPuesto",
			new String[] { String.class.getName() },
			SolicitudReclutamientoModelImpl.PUESTO_COLUMN_BITMASK);
	public static final FinderPath FINDER_PATH_COUNT_BY_PUESTO = new FinderPath(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByPuesto",
			new String[] { String.class.getName() });
	public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoModelImpl.FINDER_CACHE_ENABLED,
			SolicitudReclutamientoImpl.class,
			FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findAll", new String[0]);
	public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoModelImpl.FINDER_CACHE_ENABLED,
			SolicitudReclutamientoImpl.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
	public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoModelImpl.FINDER_CACHE_ENABLED, Long.class,
			FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);

	/**
	 * Caches the solicitud reclutamiento in the entity cache if it is enabled.
	 *
	 * @param solicitudReclutamiento the solicitud reclutamiento
	 */
	public void cacheResult(SolicitudReclutamiento solicitudReclutamiento) {
		EntityCacheUtil.putResult(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoImpl.class,
			solicitudReclutamiento.getPrimaryKey(), solicitudReclutamiento);

		solicitudReclutamiento.resetOriginalValues();
	}

	/**
	 * Caches the solicitud reclutamientos in the entity cache if it is enabled.
	 *
	 * @param solicitudReclutamientos the solicitud reclutamientos
	 */
	public void cacheResult(
		List<SolicitudReclutamiento> solicitudReclutamientos) {
		for (SolicitudReclutamiento solicitudReclutamiento : solicitudReclutamientos) {
			if (EntityCacheUtil.getResult(
						SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
						SolicitudReclutamientoImpl.class,
						solicitudReclutamiento.getPrimaryKey()) == null) {
				cacheResult(solicitudReclutamiento);
			}
			else {
				solicitudReclutamiento.resetOriginalValues();
			}
		}
	}

	/**
	 * Clears the cache for all solicitud reclutamientos.
	 *
	 * <p>
	 * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache() {
		if (_HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE) {
			CacheRegistryUtil.clear(SolicitudReclutamientoImpl.class.getName());
		}

		EntityCacheUtil.clearCache(SolicitudReclutamientoImpl.class.getName());

		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_ENTITY);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	/**
	 * Clears the cache for the solicitud reclutamiento.
	 *
	 * <p>
	 * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
	 * </p>
	 */
	@Override
	public void clearCache(SolicitudReclutamiento solicitudReclutamiento) {
		EntityCacheUtil.removeResult(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoImpl.class,
			solicitudReclutamiento.getPrimaryKey());

		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	@Override
	public void clearCache(List<SolicitudReclutamiento> solicitudReclutamientos) {
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

		for (SolicitudReclutamiento solicitudReclutamiento : solicitudReclutamientos) {
			EntityCacheUtil.removeResult(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
				SolicitudReclutamientoImpl.class,
				solicitudReclutamiento.getPrimaryKey());
		}
	}

	/**
	 * Creates a new solicitud reclutamiento with the primary key. Does not add the solicitud reclutamiento to the database.
	 *
	 * @param solicitudReclutamientoId the primary key for the new solicitud reclutamiento
	 * @return the new solicitud reclutamiento
	 */
	public SolicitudReclutamiento create(long solicitudReclutamientoId) {
		SolicitudReclutamiento solicitudReclutamiento = new SolicitudReclutamientoImpl();

		solicitudReclutamiento.setNew(true);
		solicitudReclutamiento.setPrimaryKey(solicitudReclutamientoId);

		return solicitudReclutamiento;
	}

	/**
	 * Removes the solicitud reclutamiento with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	 * @return the solicitud reclutamiento that was removed
	 * @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public SolicitudReclutamiento remove(long solicitudReclutamientoId)
		throws NoSuchSolicitudReclutamientoException, SystemException {
		return remove(Long.valueOf(solicitudReclutamientoId));
	}

	/**
	 * Removes the solicitud reclutamiento with the primary key from the database. Also notifies the appropriate model listeners.
	 *
	 * @param primaryKey the primary key of the solicitud reclutamiento
	 * @return the solicitud reclutamiento that was removed
	 * @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	@Override
	public SolicitudReclutamiento remove(Serializable primaryKey)
		throws NoSuchSolicitudReclutamientoException, SystemException {
		Session session = null;

		try {
			session = openSession();

			SolicitudReclutamiento solicitudReclutamiento = (SolicitudReclutamiento)session.get(SolicitudReclutamientoImpl.class,
					primaryKey);

			if (solicitudReclutamiento == null) {
				if (_log.isWarnEnabled()) {
					_log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
				}

				throw new NoSuchSolicitudReclutamientoException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
					primaryKey);
			}

			return remove(solicitudReclutamiento);
		}
		catch (NoSuchSolicitudReclutamientoException nsee) {
			throw nsee;
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}
	}

	@Override
	protected SolicitudReclutamiento removeImpl(
		SolicitudReclutamiento solicitudReclutamiento)
		throws SystemException {
		solicitudReclutamiento = toUnwrappedModel(solicitudReclutamiento);

		Session session = null;

		try {
			session = openSession();

			BatchSessionUtil.delete(session, solicitudReclutamiento);
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		clearCache(solicitudReclutamiento);

		return solicitudReclutamiento;
	}

	@Override
	public SolicitudReclutamiento updateImpl(
		com.rec.hitss.service.model.SolicitudReclutamiento solicitudReclutamiento,
		boolean merge) throws SystemException {
		solicitudReclutamiento = toUnwrappedModel(solicitudReclutamiento);

		boolean isNew = solicitudReclutamiento.isNew();

		SolicitudReclutamientoModelImpl solicitudReclutamientoModelImpl = (SolicitudReclutamientoModelImpl)solicitudReclutamiento;

		Session session = null;

		try {
			session = openSession();

			BatchSessionUtil.update(session, solicitudReclutamiento, merge);

			solicitudReclutamiento.setNew(false);
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}

		FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

		if (isNew || !SolicitudReclutamientoModelImpl.COLUMN_BITMASK_ENABLED) {
			FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
		}

		else {
			if ((solicitudReclutamientoModelImpl.getColumnBitmask() &
					FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_PUESTO.getColumnBitmask()) != 0) {
				Object[] args = new Object[] {
						solicitudReclutamientoModelImpl.getOriginalPuesto()
					};

				FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_PUESTO, args);
				FinderCacheUtil.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_PUESTO,
					args);

				args = new Object[] { solicitudReclutamientoModelImpl.getPuesto() };

				FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_PUESTO, args);
				FinderCacheUtil.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_PUESTO,
					args);
			}
		}

		EntityCacheUtil.putResult(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
			SolicitudReclutamientoImpl.class,
			solicitudReclutamiento.getPrimaryKey(), solicitudReclutamiento);

		return solicitudReclutamiento;
	}

	protected SolicitudReclutamiento toUnwrappedModel(
		SolicitudReclutamiento solicitudReclutamiento) {
		if (solicitudReclutamiento instanceof SolicitudReclutamientoImpl) {
			return solicitudReclutamiento;
		}

		SolicitudReclutamientoImpl solicitudReclutamientoImpl = new SolicitudReclutamientoImpl();

		solicitudReclutamientoImpl.setNew(solicitudReclutamiento.isNew());
		solicitudReclutamientoImpl.setPrimaryKey(solicitudReclutamiento.getPrimaryKey());

		solicitudReclutamientoImpl.setSolicitudReclutamientoId(solicitudReclutamiento.getSolicitudReclutamientoId());
		solicitudReclutamientoImpl.setPuesto(solicitudReclutamiento.getPuesto());

		return solicitudReclutamientoImpl;
	}

	/**
	 * Returns the solicitud reclutamiento with the primary key or throws a {@link com.liferay.portal.NoSuchModelException} if it could not be found.
	 *
	 * @param primaryKey the primary key of the solicitud reclutamiento
	 * @return the solicitud reclutamiento
	 * @throws com.liferay.portal.NoSuchModelException if a solicitud reclutamiento with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	@Override
	public SolicitudReclutamiento findByPrimaryKey(Serializable primaryKey)
		throws NoSuchModelException, SystemException {
		return findByPrimaryKey(((Long)primaryKey).longValue());
	}

	/**
	 * Returns the solicitud reclutamiento with the primary key or throws a {@link com.rec.hitss.service.NoSuchSolicitudReclutamientoException} if it could not be found.
	 *
	 * @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	 * @return the solicitud reclutamiento
	 * @throws com.rec.hitss.service.NoSuchSolicitudReclutamientoException if a solicitud reclutamiento with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public SolicitudReclutamiento findByPrimaryKey(
		long solicitudReclutamientoId)
		throws NoSuchSolicitudReclutamientoException, SystemException {
		SolicitudReclutamiento solicitudReclutamiento = fetchByPrimaryKey(solicitudReclutamientoId);

		if (solicitudReclutamiento == null) {
			if (_log.isWarnEnabled()) {
				_log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
					solicitudReclutamientoId);
			}

			throw new NoSuchSolicitudReclutamientoException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
				solicitudReclutamientoId);
		}

		return solicitudReclutamiento;
	}

	/**
	 * Returns the solicitud reclutamiento with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param primaryKey the primary key of the solicitud reclutamiento
	 * @return the solicitud reclutamiento, or <code>null</code> if a solicitud reclutamiento with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	@Override
	public SolicitudReclutamiento fetchByPrimaryKey(Serializable primaryKey)
		throws SystemException {
		return fetchByPrimaryKey(((Long)primaryKey).longValue());
	}

	/**
	 * Returns the solicitud reclutamiento with the primary key or returns <code>null</code> if it could not be found.
	 *
	 * @param solicitudReclutamientoId the primary key of the solicitud reclutamiento
	 * @return the solicitud reclutamiento, or <code>null</code> if a solicitud reclutamiento with the primary key could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public SolicitudReclutamiento fetchByPrimaryKey(
		long solicitudReclutamientoId) throws SystemException {
		SolicitudReclutamiento solicitudReclutamiento = (SolicitudReclutamiento)EntityCacheUtil.getResult(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
				SolicitudReclutamientoImpl.class, solicitudReclutamientoId);

		if (solicitudReclutamiento == _nullSolicitudReclutamiento) {
			return null;
		}

		if (solicitudReclutamiento == null) {
			Session session = null;

			boolean hasException = false;

			try {
				session = openSession();

				solicitudReclutamiento = (SolicitudReclutamiento)session.get(SolicitudReclutamientoImpl.class,
						Long.valueOf(solicitudReclutamientoId));
			}
			catch (Exception e) {
				hasException = true;

				throw processException(e);
			}
			finally {
				if (solicitudReclutamiento != null) {
					cacheResult(solicitudReclutamiento);
				}
				else if (!hasException) {
					EntityCacheUtil.putResult(SolicitudReclutamientoModelImpl.ENTITY_CACHE_ENABLED,
						SolicitudReclutamientoImpl.class,
						solicitudReclutamientoId, _nullSolicitudReclutamiento);
				}

				closeSession(session);
			}
		}

		return solicitudReclutamiento;
	}

	/**
	 * Returns all the solicitud reclutamientos where puesto = &#63;.
	 *
	 * @param puesto the puesto
	 * @return the matching solicitud reclutamientos
	 * @throws SystemException if a system exception occurred
	 */
	public List<SolicitudReclutamiento> findByPuesto(String puesto)
		throws SystemException {
		return findByPuesto(puesto, QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
	public List<SolicitudReclutamiento> findByPuesto(String puesto, int start,
		int end) throws SystemException {
		return findByPuesto(puesto, start, end, null);
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
	public List<SolicitudReclutamiento> findByPuesto(String puesto, int start,
		int end, OrderByComparator orderByComparator) throws SystemException {
		FinderPath finderPath = null;
		Object[] finderArgs = null;

		if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
				(orderByComparator == null)) {
			finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_PUESTO;
			finderArgs = new Object[] { puesto };
		}
		else {
			finderPath = FINDER_PATH_WITH_PAGINATION_FIND_BY_PUESTO;
			finderArgs = new Object[] { puesto, start, end, orderByComparator };
		}

		List<SolicitudReclutamiento> list = (List<SolicitudReclutamiento>)FinderCacheUtil.getResult(finderPath,
				finderArgs, this);

		if ((list != null) && !list.isEmpty()) {
			for (SolicitudReclutamiento solicitudReclutamiento : list) {
				if (!Validator.equals(puesto, solicitudReclutamiento.getPuesto())) {
					list = null;

					break;
				}
			}
		}

		if (list == null) {
			StringBundler query = null;

			if (orderByComparator != null) {
				query = new StringBundler(3 +
						(orderByComparator.getOrderByFields().length * 3));
			}
			else {
				query = new StringBundler(3);
			}

			query.append(_SQL_SELECT_SOLICITUDRECLUTAMIENTO_WHERE);

			if (puesto == null) {
				query.append(_FINDER_COLUMN_PUESTO_PUESTO_1);
			}
			else {
				if (puesto.equals(StringPool.BLANK)) {
					query.append(_FINDER_COLUMN_PUESTO_PUESTO_3);
				}
				else {
					query.append(_FINDER_COLUMN_PUESTO_PUESTO_2);
				}
			}

			if (orderByComparator != null) {
				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);
			}

			else {
				query.append(SolicitudReclutamientoModelImpl.ORDER_BY_JPQL);
			}

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				if (puesto != null) {
					qPos.add(puesto);
				}

				list = (List<SolicitudReclutamiento>)QueryUtil.list(q,
						getDialect(), start, end);
			}
			catch (Exception e) {
				throw processException(e);
			}
			finally {
				if (list == null) {
					FinderCacheUtil.removeResult(finderPath, finderArgs);
				}
				else {
					cacheResult(list);

					FinderCacheUtil.putResult(finderPath, finderArgs, list);
				}

				closeSession(session);
			}
		}

		return list;
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
	public SolicitudReclutamiento findByPuesto_First(String puesto,
		OrderByComparator orderByComparator)
		throws NoSuchSolicitudReclutamientoException, SystemException {
		SolicitudReclutamiento solicitudReclutamiento = fetchByPuesto_First(puesto,
				orderByComparator);

		if (solicitudReclutamiento != null) {
			return solicitudReclutamiento;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("puesto=");
		msg.append(puesto);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchSolicitudReclutamientoException(msg.toString());
	}

	/**
	 * Returns the first solicitud reclutamiento in the ordered set where puesto = &#63;.
	 *
	 * @param puesto the puesto
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the first matching solicitud reclutamiento, or <code>null</code> if a matching solicitud reclutamiento could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public SolicitudReclutamiento fetchByPuesto_First(String puesto,
		OrderByComparator orderByComparator) throws SystemException {
		List<SolicitudReclutamiento> list = findByPuesto(puesto, 0, 1,
				orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	public SolicitudReclutamiento findByPuesto_Last(String puesto,
		OrderByComparator orderByComparator)
		throws NoSuchSolicitudReclutamientoException, SystemException {
		SolicitudReclutamiento solicitudReclutamiento = fetchByPuesto_Last(puesto,
				orderByComparator);

		if (solicitudReclutamiento != null) {
			return solicitudReclutamiento;
		}

		StringBundler msg = new StringBundler(4);

		msg.append(_NO_SUCH_ENTITY_WITH_KEY);

		msg.append("puesto=");
		msg.append(puesto);

		msg.append(StringPool.CLOSE_CURLY_BRACE);

		throw new NoSuchSolicitudReclutamientoException(msg.toString());
	}

	/**
	 * Returns the last solicitud reclutamiento in the ordered set where puesto = &#63;.
	 *
	 * @param puesto the puesto
	 * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
	 * @return the last matching solicitud reclutamiento, or <code>null</code> if a matching solicitud reclutamiento could not be found
	 * @throws SystemException if a system exception occurred
	 */
	public SolicitudReclutamiento fetchByPuesto_Last(String puesto,
		OrderByComparator orderByComparator) throws SystemException {
		int count = countByPuesto(puesto);

		List<SolicitudReclutamiento> list = findByPuesto(puesto, count - 1,
				count, orderByComparator);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return null;
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
	public SolicitudReclutamiento[] findByPuesto_PrevAndNext(
		long solicitudReclutamientoId, String puesto,
		OrderByComparator orderByComparator)
		throws NoSuchSolicitudReclutamientoException, SystemException {
		SolicitudReclutamiento solicitudReclutamiento = findByPrimaryKey(solicitudReclutamientoId);

		Session session = null;

		try {
			session = openSession();

			SolicitudReclutamiento[] array = new SolicitudReclutamientoImpl[3];

			array[0] = getByPuesto_PrevAndNext(session, solicitudReclutamiento,
					puesto, orderByComparator, true);

			array[1] = solicitudReclutamiento;

			array[2] = getByPuesto_PrevAndNext(session, solicitudReclutamiento,
					puesto, orderByComparator, false);

			return array;
		}
		catch (Exception e) {
			throw processException(e);
		}
		finally {
			closeSession(session);
		}
	}

	protected SolicitudReclutamiento getByPuesto_PrevAndNext(Session session,
		SolicitudReclutamiento solicitudReclutamiento, String puesto,
		OrderByComparator orderByComparator, boolean previous) {
		StringBundler query = null;

		if (orderByComparator != null) {
			query = new StringBundler(6 +
					(orderByComparator.getOrderByFields().length * 6));
		}
		else {
			query = new StringBundler(3);
		}

		query.append(_SQL_SELECT_SOLICITUDRECLUTAMIENTO_WHERE);

		if (puesto == null) {
			query.append(_FINDER_COLUMN_PUESTO_PUESTO_1);
		}
		else {
			if (puesto.equals(StringPool.BLANK)) {
				query.append(_FINDER_COLUMN_PUESTO_PUESTO_3);
			}
			else {
				query.append(_FINDER_COLUMN_PUESTO_PUESTO_2);
			}
		}

		if (orderByComparator != null) {
			String[] orderByConditionFields = orderByComparator.getOrderByConditionFields();

			if (orderByConditionFields.length > 0) {
				query.append(WHERE_AND);
			}

			for (int i = 0; i < orderByConditionFields.length; i++) {
				query.append(_ORDER_BY_ENTITY_ALIAS);
				query.append(orderByConditionFields[i]);

				if ((i + 1) < orderByConditionFields.length) {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(WHERE_GREATER_THAN_HAS_NEXT);
					}
					else {
						query.append(WHERE_LESSER_THAN_HAS_NEXT);
					}
				}
				else {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(WHERE_GREATER_THAN);
					}
					else {
						query.append(WHERE_LESSER_THAN);
					}
				}
			}

			query.append(ORDER_BY_CLAUSE);

			String[] orderByFields = orderByComparator.getOrderByFields();

			for (int i = 0; i < orderByFields.length; i++) {
				query.append(_ORDER_BY_ENTITY_ALIAS);
				query.append(orderByFields[i]);

				if ((i + 1) < orderByFields.length) {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(ORDER_BY_ASC_HAS_NEXT);
					}
					else {
						query.append(ORDER_BY_DESC_HAS_NEXT);
					}
				}
				else {
					if (orderByComparator.isAscending() ^ previous) {
						query.append(ORDER_BY_ASC);
					}
					else {
						query.append(ORDER_BY_DESC);
					}
				}
			}
		}

		else {
			query.append(SolicitudReclutamientoModelImpl.ORDER_BY_JPQL);
		}

		String sql = query.toString();

		Query q = session.createQuery(sql);

		q.setFirstResult(0);
		q.setMaxResults(2);

		QueryPos qPos = QueryPos.getInstance(q);

		if (puesto != null) {
			qPos.add(puesto);
		}

		if (orderByComparator != null) {
			Object[] values = orderByComparator.getOrderByConditionValues(solicitudReclutamiento);

			for (Object value : values) {
				qPos.add(value);
			}
		}

		List<SolicitudReclutamiento> list = q.list();

		if (list.size() == 2) {
			return list.get(1);
		}
		else {
			return null;
		}
	}

	/**
	 * Returns all the solicitud reclutamientos.
	 *
	 * @return the solicitud reclutamientos
	 * @throws SystemException if a system exception occurred
	 */
	public List<SolicitudReclutamiento> findAll() throws SystemException {
		return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
	public List<SolicitudReclutamiento> findAll(int start, int end)
		throws SystemException {
		return findAll(start, end, null);
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
	public List<SolicitudReclutamiento> findAll(int start, int end,
		OrderByComparator orderByComparator) throws SystemException {
		FinderPath finderPath = null;
		Object[] finderArgs = new Object[] { start, end, orderByComparator };

		if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
				(orderByComparator == null)) {
			finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL;
			finderArgs = FINDER_ARGS_EMPTY;
		}
		else {
			finderPath = FINDER_PATH_WITH_PAGINATION_FIND_ALL;
			finderArgs = new Object[] { start, end, orderByComparator };
		}

		List<SolicitudReclutamiento> list = (List<SolicitudReclutamiento>)FinderCacheUtil.getResult(finderPath,
				finderArgs, this);

		if (list == null) {
			StringBundler query = null;
			String sql = null;

			if (orderByComparator != null) {
				query = new StringBundler(2 +
						(orderByComparator.getOrderByFields().length * 3));

				query.append(_SQL_SELECT_SOLICITUDRECLUTAMIENTO);

				appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
					orderByComparator);

				sql = query.toString();
			}
			else {
				sql = _SQL_SELECT_SOLICITUDRECLUTAMIENTO.concat(SolicitudReclutamientoModelImpl.ORDER_BY_JPQL);
			}

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				if (orderByComparator == null) {
					list = (List<SolicitudReclutamiento>)QueryUtil.list(q,
							getDialect(), start, end, false);

					Collections.sort(list);
				}
				else {
					list = (List<SolicitudReclutamiento>)QueryUtil.list(q,
							getDialect(), start, end);
				}
			}
			catch (Exception e) {
				throw processException(e);
			}
			finally {
				if (list == null) {
					FinderCacheUtil.removeResult(finderPath, finderArgs);
				}
				else {
					cacheResult(list);

					FinderCacheUtil.putResult(finderPath, finderArgs, list);
				}

				closeSession(session);
			}
		}

		return list;
	}

	/**
	 * Removes all the solicitud reclutamientos where puesto = &#63; from the database.
	 *
	 * @param puesto the puesto
	 * @throws SystemException if a system exception occurred
	 */
	public void removeByPuesto(String puesto) throws SystemException {
		for (SolicitudReclutamiento solicitudReclutamiento : findByPuesto(
				puesto)) {
			remove(solicitudReclutamiento);
		}
	}

	/**
	 * Removes all the solicitud reclutamientos from the database.
	 *
	 * @throws SystemException if a system exception occurred
	 */
	public void removeAll() throws SystemException {
		for (SolicitudReclutamiento solicitudReclutamiento : findAll()) {
			remove(solicitudReclutamiento);
		}
	}

	/**
	 * Returns the number of solicitud reclutamientos where puesto = &#63;.
	 *
	 * @param puesto the puesto
	 * @return the number of matching solicitud reclutamientos
	 * @throws SystemException if a system exception occurred
	 */
	public int countByPuesto(String puesto) throws SystemException {
		Object[] finderArgs = new Object[] { puesto };

		Long count = (Long)FinderCacheUtil.getResult(FINDER_PATH_COUNT_BY_PUESTO,
				finderArgs, this);

		if (count == null) {
			StringBundler query = new StringBundler(2);

			query.append(_SQL_COUNT_SOLICITUDRECLUTAMIENTO_WHERE);

			if (puesto == null) {
				query.append(_FINDER_COLUMN_PUESTO_PUESTO_1);
			}
			else {
				if (puesto.equals(StringPool.BLANK)) {
					query.append(_FINDER_COLUMN_PUESTO_PUESTO_3);
				}
				else {
					query.append(_FINDER_COLUMN_PUESTO_PUESTO_2);
				}
			}

			String sql = query.toString();

			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(sql);

				QueryPos qPos = QueryPos.getInstance(q);

				if (puesto != null) {
					qPos.add(puesto);
				}

				count = (Long)q.uniqueResult();
			}
			catch (Exception e) {
				throw processException(e);
			}
			finally {
				if (count == null) {
					count = Long.valueOf(0);
				}

				FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_PUESTO,
					finderArgs, count);

				closeSession(session);
			}
		}

		return count.intValue();
	}

	/**
	 * Returns the number of solicitud reclutamientos.
	 *
	 * @return the number of solicitud reclutamientos
	 * @throws SystemException if a system exception occurred
	 */
	public int countAll() throws SystemException {
		Long count = (Long)FinderCacheUtil.getResult(FINDER_PATH_COUNT_ALL,
				FINDER_ARGS_EMPTY, this);

		if (count == null) {
			Session session = null;

			try {
				session = openSession();

				Query q = session.createQuery(_SQL_COUNT_SOLICITUDRECLUTAMIENTO);

				count = (Long)q.uniqueResult();
			}
			catch (Exception e) {
				throw processException(e);
			}
			finally {
				if (count == null) {
					count = Long.valueOf(0);
				}

				FinderCacheUtil.putResult(FINDER_PATH_COUNT_ALL,
					FINDER_ARGS_EMPTY, count);

				closeSession(session);
			}
		}

		return count.intValue();
	}

	/**
	 * Initializes the solicitud reclutamiento persistence.
	 */
	public void afterPropertiesSet() {
		String[] listenerClassNames = StringUtil.split(GetterUtil.getString(
					com.liferay.util.service.ServiceProps.get(
						"value.object.listener.com.rec.hitss.service.model.SolicitudReclutamiento")));

		if (listenerClassNames.length > 0) {
			try {
				List<ModelListener<SolicitudReclutamiento>> listenersList = new ArrayList<ModelListener<SolicitudReclutamiento>>();

				for (String listenerClassName : listenerClassNames) {
					listenersList.add((ModelListener<SolicitudReclutamiento>)InstanceFactory.newInstance(
							listenerClassName));
				}

				listeners = listenersList.toArray(new ModelListener[listenersList.size()]);
			}
			catch (Exception e) {
				_log.error(e);
			}
		}
	}

	public void destroy() {
		EntityCacheUtil.removeCache(SolicitudReclutamientoImpl.class.getName());
		FinderCacheUtil.removeCache(FINDER_CLASS_NAME_ENTITY);
		FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
	}

	@BeanReference(type = SolicitudReclutamientoPersistence.class)
	protected SolicitudReclutamientoPersistence solicitudReclutamientoPersistence;
	@BeanReference(type = ResourcePersistence.class)
	protected ResourcePersistence resourcePersistence;
	@BeanReference(type = UserPersistence.class)
	protected UserPersistence userPersistence;
	private static final String _SQL_SELECT_SOLICITUDRECLUTAMIENTO = "SELECT solicitudReclutamiento FROM SolicitudReclutamiento solicitudReclutamiento";
	private static final String _SQL_SELECT_SOLICITUDRECLUTAMIENTO_WHERE = "SELECT solicitudReclutamiento FROM SolicitudReclutamiento solicitudReclutamiento WHERE ";
	private static final String _SQL_COUNT_SOLICITUDRECLUTAMIENTO = "SELECT COUNT(solicitudReclutamiento) FROM SolicitudReclutamiento solicitudReclutamiento";
	private static final String _SQL_COUNT_SOLICITUDRECLUTAMIENTO_WHERE = "SELECT COUNT(solicitudReclutamiento) FROM SolicitudReclutamiento solicitudReclutamiento WHERE ";
	private static final String _FINDER_COLUMN_PUESTO_PUESTO_1 = "solicitudReclutamiento.puesto IS NULL";
	private static final String _FINDER_COLUMN_PUESTO_PUESTO_2 = "solicitudReclutamiento.puesto = ?";
	private static final String _FINDER_COLUMN_PUESTO_PUESTO_3 = "(solicitudReclutamiento.puesto IS NULL OR solicitudReclutamiento.puesto = ?)";
	private static final String _ORDER_BY_ENTITY_ALIAS = "solicitudReclutamiento.";
	private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No SolicitudReclutamiento exists with the primary key ";
	private static final String _NO_SUCH_ENTITY_WITH_KEY = "No SolicitudReclutamiento exists with the key {";
	private static final boolean _HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE = GetterUtil.getBoolean(PropsUtil.get(
				PropsKeys.HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
	private static Log _log = LogFactoryUtil.getLog(SolicitudReclutamientoPersistenceImpl.class);
	private static SolicitudReclutamiento _nullSolicitudReclutamiento = new SolicitudReclutamientoImpl() {
			@Override
			public Object clone() {
				return this;
			}

			@Override
			public CacheModel<SolicitudReclutamiento> toCacheModel() {
				return _nullSolicitudReclutamientoCacheModel;
			}
		};

	private static CacheModel<SolicitudReclutamiento> _nullSolicitudReclutamientoCacheModel =
		new CacheModel<SolicitudReclutamiento>() {
			public SolicitudReclutamiento toEntityModel() {
				return _nullSolicitudReclutamiento;
			}
		};
}