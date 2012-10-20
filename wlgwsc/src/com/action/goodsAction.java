package com.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGoodsDAO;
import com.model.TAdmin;
import com.model.TCatelog;
import com.model.TGoods;
import com.opensymphony.xwork2.ActionSupport;

public class goodsAction extends ActionSupport
{
	private int goodsId;
	private int goodsCatelogId;	
	private String goodsName;

	private String goodsMiaoshu;
	private String fujian;
	private String goodsYanse;
	private int goodsShichangjia;
	private int goodsTejia;
	
	private int catelogId;
	private int goodsKucun;
	
	private String message;
	private String path;
	
	private TGoodsDAO goodsDAO;
	private TCatelogDAO catelogDAO;
	
	private int rukushuliang;
	
	public String goodsNoTejiaAdd()
	{
		TGoods goods=new TGoods();
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);

		
		
		
		goods.setGoodsMiaoshu(goodsMiaoshu);
		goods.setGoodsPic(fujian);
		goods.setGoodsShichangjia(goodsShichangjia);
		if(goodsTejia==0)//�ظ�Ϊ0��ʾû���ؼ�
		{
			goods.setGoodsTejia(goodsShichangjia);// ��������ؼ���Ʒ���������Ʒ���ؼ�����Ϊ�г��۸�
			goods.setGoodsIsnottejia("no");
		}
		else
		{
			goods.setGoodsTejia(goodsTejia);
			goods.setGoodsIsnottejia("yes");
		}
		
		goods.setGoodsKucun(goodsKucun);
		goods.setGoodsDel("no");
		
		goodsDAO.save(goods);
		this.setMessage("�����ɹ�");
		this.setPath("goodsManaNoTejia.action");
		return "succeed";
		
	}
	
	public String goodsNoTejiaDel()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsDel("yes");
		goodsDAO.attachDirty(goods);
		this.setMessage("�����ɹ�");
		this.setPath("goodsManaNoTejia.action");
		return "succeed";
	}
	
	public String goodsManaNoTejia()
	{
		String sql="from TGoods where goodsDel='no' order by goodsIsnottejia";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<goodsList.size();i++)
		{
			TGoods goods=(TGoods)goodsList.get(i);
			System.out.println(goods.getGoodsCatelogId());
			goods.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsShezhiTejia()
	{
		System.out.println("aaaaaaaaaaaaaaaaaaa");
		if(goodsTejia>=goodsShichangjia){
			System.out.println("bbbbbbbbbbbbbbb");
			this.setMessage("�ؼ۲��ܸ����г���");
			HttpServletRequest request = ServletActionContext.getRequest (); 
			String no = "";
			request.setAttribute("no", no);
			this.setPath("goodsShezhiTejia.action");
			return ActionSupport.ERROR;
		}else{
			System.out.println("cccccccccccccc");
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsIsnottejia("yes");
		goods.setGoodsTejia(goodsTejia);
		goodsDAO.attachDirty(goods);
		return ActionSupport.SUCCESS;
		}
		
	}
	public String goodsQxTejia()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsIsnottejia("no");
		goods.setGoodsTejia(goodsShichangjia);
		goodsDAO.attachDirty(goods);
		return goodsManaNoTejia();
	}
	
	public String goodsKucun()
	{
		String sql="from TGoods where goodsDel='no' order by goodsIsnottejia";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsRuku()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsKucun(goods.getGoodsKucun()+rukushuliang);
		//goods.setGoodsTejia(goodsTejia);
		goodsDAO.attachDirty(goods);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsQuery()
	{
		String sql="from TGoods where goodsDel='no' and goodsName like'%"+goodsName+"%' order by goodsIsnottejia";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<goodsList.size();i++)
		{
			TGoods goods=(TGoods)goodsList.get(i);
			System.out.println(goods.getGoodsCatelogId());
			goods.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	public String goodsEditPre()
	{
		TGoods goods=goodsDAO.findById(goodsId);
			Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("goods", goods);
			return ActionSupport.SUCCESS;
	}
	public String goodsEdit()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		//goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		goods.setGoodsPic(fujian);
		goods.setGoodsShichangjia(goodsShichangjia);
		//if(goodsTejia==0)//�ظ�Ϊ0��ʾû���ؼ�
		//{
			//goods.setGoodsTejia(goodsShichangjia);// ��������ؼ���Ʒ���������Ʒ���ؼ�����Ϊ�г��۸�
			//goods.setGoodsIsnottejia("no");
		//}
		//else
		//{
			goods.setGoodsTejia(goodsTejia);
			//goods.setGoodsIsnottejia("yes");
		//}
		
		goods.setGoodsKucun(goodsKucun);
		goods.setGoodsDel("no");
		
		goodsDAO.edit(goods);
		this.setMessage("�����ɹ�");
		this.setPath("goodsManaNoTejia.action");
		return "succeed";
	}
	/*public String goodsYesTejiaAdd()
	{
		TGoods goods=new TGoods();
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		goods.setGoodsPic(fujian);
		goods.setGoodsYanse(goodsYanse);
		goods.setGoodsShichangjia(goodsShichangjia);
		goods.setGoodsTejia(goodsTejia);
		goods.setGoodsIsnottejia("yes");
		goods.setGoodsDel("no");
		goodsDAO.save(goods);
		this.setMessage("�����ɹ�");
		this.setPath("goodsManaYesTejia.action");
		return "succeed";
		
	}
	
	public String goodsYesTejiaDel()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsDel("yes");
		goodsDAO.attachDirty(goods);
		this.setMessage("�����ɹ�");
		this.setPath("goodsManaYesTejia.action");
		return "succeed";
	}
	
	
	public String goodsManaYesTejia()
	{
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='yes' order by goodsCatelogId";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<goodsList.size();i++)
		{
			TGoods goods=(TGoods)goodsList.get(i);
			goods.setGoodsCatelogName(catelogDAO.findById(goods.getGoodsCatelogId()).getCatelogName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}*/
	
	public String goodsDetailHou()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		TGoods goods=goodsDAO.findById(goodsId);
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String goodsDetail()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		TGoods goods=goodsDAO.findById(goodsId);
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsAllYesTejia()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='yes' order by goodsCatelogId";
		List goodsYesTejiaList=goodsDAO.getHibernateTemplate().find(sql);
		request.put("goodsYesTejiaList", goodsYesTejiaList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsAllNoTejia()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='no' order by goodsCatelogId";
		List goodsYesTejiaList=goodsDAO.getHibernateTemplate().find(sql);
		request.put("goodsYesTejiaList", goodsYesTejiaList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsByCatelog()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		String sql="from TGoods where goodsDel='no' and goodsCatelogId=? order by goodsCatelogId";
		Object[] con={catelogId};
		List goodsByCatelogList=goodsDAO.getHibernateTemplate().find(sql,con);
		request.put("goodsByCatelogList", goodsByCatelogList);
		
		System.out.println(goodsByCatelogList.size()+"^^^"+goodsCatelogId);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodSearch()
	{
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		String sql="";
		
		if(catelogId==0)
		{
			
			sql="from TGoods where goodsDel='no' and goodsName like '%"+goodsName+"%'"+" order by goodsCatelogId";
		
		}
		else
		{
			///System.out.println("cccccccccccccccccccccccccc"+catelogId);
			sql="from TGoods where goodsDel='no' and goodsCatelogId="+catelogId+" and goodsName like '%"+goodsName+"%'"+" order by goodsCatelogId";
		}
		//System.out.println("ccccccccccccccc------------"+sql);
	
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		request.put("goodsList", goodsList);
		
		return ActionSupport.SUCCESS;
	}
	
	public int getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}

	public int getGoodsCatelogId()
	{
		return goodsCatelogId;
	}
	public void setGoodsCatelogId(int goodsCatelogId)
	{
		this.goodsCatelogId = goodsCatelogId;
	}
	public TGoodsDAO getGoodsDAO()
	{
		return goodsDAO;
	}
	public void setGoodsDAO(TGoodsDAO goodsDAO)
	{
		this.goodsDAO = goodsDAO;
	}
	
	public int getRukushuliang()
	{
		return rukushuliang;
	}

	public void setRukushuliang(int rukushuliang)
	{
		this.rukushuliang = rukushuliang;
	}

	public int getGoodsId()
	{
		return goodsId;
	}
	public void setGoodsId(int goodsId)
	{
		this.goodsId = goodsId;
	}
	public String getGoodsMiaoshu()
	{
		return goodsMiaoshu;
	}
	public void setGoodsMiaoshu(String goodsMiaoshu)
	{
		this.goodsMiaoshu = goodsMiaoshu;
	}
	public String getGoodsName()
	{ 
		
		return goodsName;
	}


	public String getFujian()
	{
		return fujian;
	}

	public int getGoodsKucun()
	{
		return goodsKucun;
	}

	public void setGoodsKucun(int goodsKucun)
	{
		this.goodsKucun = goodsKucun;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public void setGoodsName(String goodsName)
	{

		this.goodsName = goodsName;
	}

	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}

	public int getGoodsShichangjia()
	{
		return goodsShichangjia;
	}
	public void setGoodsShichangjia(int goodsShichangjia)
	{
		this.goodsShichangjia = goodsShichangjia;
	}
	public int getGoodsTejia()
	{
		return goodsTejia;
	}
	public void setGoodsTejia(int goodsTejia)
	{
		this.goodsTejia = goodsTejia;
	}
	public String getGoodsYanse()
	{
		return goodsYanse;
	}
	public void setGoodsYanse(String goodsYanse)
	{
		this.goodsYanse = goodsYanse;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	
	
	
	

	
	
	
}
