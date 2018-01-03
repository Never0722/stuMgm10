package edu.jyu.stumgm.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.jyu.stumgm.bo.ElectiveBO;
import edu.jyu.stumgm.entity.Elective;


public class ElectiveListAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ElectiveBO electiveBO;
	private List<Elective> electivelist;

	
	public void getAllElective()
	{
		electivelist = electiveBO.getAllElectives();
	}
	public ElectiveBO getElectiveBO() {
		return electiveBO;
	}

	public void setElectiveBO(ElectiveBO electiveBO) {
		this.electiveBO = electiveBO;
	}

	public List<Elective> getElectivelist() {
		return electivelist;
	}

	public void setElectivelist(List<Elective> electivelist) {
		this.electivelist = electivelist;
	}
	
	public String execute()
	{
		List<Elective> electivelist = electiveBO.getAllElectives();
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("electivelist", electivelist);
		
//		System.out.println("electivelist.size()="+electivelist.size());
		return SUCCESS;
	}
}