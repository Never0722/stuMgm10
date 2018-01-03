package edu.jyu.stumgm.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.jyu.stumgm.bo.ElectiveBO;
import edu.jyu.stumgm.bo.StudentBO;
import edu.jyu.stumgm.entity.Elective;
import edu.jyu.stumgm.entity.Student;


public class AddElectiveAction extends ActionSupport {
	
	private ElectiveBO electiveBO;
	//private StudentBO studentBO;
	private String id;
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	private String flag;
	private String stuid;
	private Elective elective;
	//private Student student;
	private List<Elective> electivelist;

	public ElectiveBO getElectiveBO() {
		return electiveBO;
	}

	public void setElectiveBO(ElectiveBO electiveBO) {
		this.electiveBO = electiveBO;
	}
	
	public String execute()
	{
		if("".equals(flag)||"list".equals(flag))
		{
			List<Elective> electivelist = electiveBO.getAllElectives();
			return "list";
		}
		if("update".equals(flag))
		{
			//student=studentBO.getStudentByNumber(stuid);
			//elective=electiveBO.getElectiveByNumber(stuid);
			//elective.setStudent(student);
			elective.setId(stuid);
			System.out.println(elective);
			electiveBO.addElective(elective);
			return "add";
		}
		
		//student = studentBO.getStudentByNumber(stuid);
		HttpServletRequest request = ServletActionContext.getRequest();
		elective=electiveBO.getElectiveByNumber(stuid);
		System.out.println(elective+flag);
		request.setAttribute("elective", elective);
		return "add";
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getStuid() {
		return stuid;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public Elective getElective() {
		return elective;
	}

	public void setElective(Elective elective) {
		this.elective = elective;
	}

	/*public Student getStudent() {
		return student;
	}*/

	/*public void setStudent(Student student) {
		this.student = student;
	}
*/
	public List<Elective> getElectivelist() {
		return electivelist;
	}

	public void setElectivelist(List<Elective> electivelist) {
		this.electivelist = electivelist;
	}

	/*public StudentBO getStudentBO() {
		return studentBO;
	}*/

	/*public void setStudentBO(StudentBO studentBO) {
		this.studentBO = studentBO;
	}*/
	


}