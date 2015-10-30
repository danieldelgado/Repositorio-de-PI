package com.rec.slider.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.dao.orm.DynamicQueryFactoryUtil;
import com.liferay.portal.kernel.dao.orm.PropertyFactoryUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.xml.Document;
import com.liferay.portal.kernel.xml.DocumentException;
import com.liferay.portal.kernel.xml.Node;
import com.liferay.portal.kernel.xml.SAXReaderUtil;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.portlet.asset.model.AssetCategory;
import com.liferay.portlet.asset.model.AssetEntry;
import com.liferay.portlet.asset.service.AssetCategoryLocalServiceUtil;
import com.liferay.portlet.asset.service.AssetEntryLocalServiceUtil;
import com.liferay.portlet.asset.service.persistence.AssetEntryQuery;
import com.liferay.portlet.journal.NoSuchArticleResourceException;
import com.liferay.portlet.journal.model.JournalArticle;
import com.liferay.portlet.journal.model.JournalArticleResource;
import com.liferay.portlet.journal.service.JournalArticleLocalServiceUtil;
import com.liferay.portlet.journal.service.JournalArticleResourceLocalServiceUtil;
import com.rec.slider.bean.Slider;
import com.rec.slider.service.SlideService;
import com.rec.slider.util.Constantes;

@Service("SlideService")
public class SlideServiceImpl implements SlideService {

	private static Log LOG = LogFactoryUtil.getLog(SlideServiceImpl.class);

	@SuppressWarnings("unchecked")
	@Override
	public List<Slider> getContentSlider(ThemeDisplay themeDisplay, HttpServletRequest request, HttpServletResponse response, String limite,String categorias) {
		LOG.debug("getContentSlider");
		List<Slider> lstSliders = new ArrayList<Slider>();
		try {
			List<AssetCategory> categories = new ArrayList<AssetCategory>();
			LOG.debug(categorias);
			String[] str = categorias.split(Constantes.SLIDE_TOKEN_SPLIT);
			
			DynamicQuery query = DynamicQueryFactoryUtil.forClass(AssetCategory.class).add(PropertyFactoryUtil.forName("name").in(str));
			categories = AssetCategoryLocalServiceUtil.dynamicQuery(query);		
			if(categories.size()==0){
				return lstSliders;
			}
			long[] idscat=new long[categories.size()];
			LOG.debug("Ids Categorias");	
			for (int i = 0; i < categories.size(); i++) {
				idscat[i] = categories.get(i).getCategoryId();	
				LOG.debug(idscat[i]);			
			}
			
			AssetEntryQuery assetEntryQuery = new AssetEntryQuery();
			assetEntryQuery.setAnyCategoryIds(idscat);
			assetEntryQuery.setOrderByCol1("createDate");
			assetEntryQuery.setStart(0);
			assetEntryQuery.setEnd(Integer.parseInt(limite));
			
			List<AssetEntry> assetEntryList = AssetEntryLocalServiceUtil.getEntries(assetEntryQuery);
			
			JournalArticleResource journalArticleResourceObj=null;
			JournalArticle journalArticleObj =null;
			String contentArticule=null,keyContent = null,valueContent = null;
			Slider slide = null;
			Document document = null;
			Node node = null;
			
			Long groupId = themeDisplay.getLayout().getGroupId();
			for (AssetEntry ae : assetEntryList) {
				try {
					journalArticleResourceObj = JournalArticleResourceLocalServiceUtil.getJournalArticleResource(ae.getClassPK());
					journalArticleObj= JournalArticleLocalServiceUtil.getArticle(groupId, journalArticleResourceObj.getArticleId());
					contentArticule = journalArticleObj.getContent();
					LOG.debug("Carga Slide:"+journalArticleObj.getTitleCurrentValue());
					LOG.debug(journalArticleObj.getContent());
					document = SAXReaderUtil.read(contentArticule);					
					slide = new Slider();
					keyContent = Constantes.SLIDE_TITULO; 
					node = document.selectSingleNode(Constantes.SLIDE_ROOT_DYNAMIC_ELEMENT_NAME  + keyContent + Constantes.SLIDE_DYNAMIC_CONTENT);
					valueContent = node.getText();
					slide.setTitulo(valueContent);
					
					keyContent = Constantes.SLIDE_DESCRIPCION;
					node = document.selectSingleNode(Constantes.SLIDE_ROOT_DYNAMIC_ELEMENT_NAME  + keyContent + Constantes.SLIDE_DYNAMIC_CONTENT);
					valueContent = node.getText();
					slide.setDescripcion(valueContent);
										
					keyContent = Constantes.SLIDE_IMAGE;
					node = document.selectSingleNode(Constantes.SLIDE_ROOT_DYNAMIC_ELEMENT_NAME  + keyContent + Constantes.SLIDE_DYNAMIC_CONTENT);
					valueContent = node.getText();
					slide.setUrlImage(valueContent);
						
					slide.setUuid(journalArticleObj.getUuid());
					
					lstSliders.add(slide);
					
				} catch (NoSuchArticleResourceException nse) {
					LOG.error(nse.getMessage(),nse);
				} catch (DocumentException e) {
					LOG.error(e.getMessage(),e);
				}
			}			
		} catch (PortalException e) {
			LOG.error(e.getMessage(),e);
		} catch (SystemException e) {
			LOG.error(e.getMessage(),e);
		}

		return lstSliders;
	}


}