package edu.jyu.stumgm.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.jyu.stumgm.bo.ElectiveBO;
import edu.jyu.stumgm.entity.Elective;


public class ElectiveAdminAction extends ActionSupport {

	private ElectiveBO electiveBO;
	private List<Elective> electivelist;

	
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
		electivelist = electiveBO.getAllElectives();
		return SUCCESS;
	}
}