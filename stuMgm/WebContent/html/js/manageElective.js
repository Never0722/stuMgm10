function checkall(form)
{
   var cbxoption;   
   cbxoption  =  form.elements;   
   for(i=0;i<cbxoption.length;i++)   
   {  
	   if((cbxoption[i].tagName.toLowerCase() ==  "input")  && (cbxoption[i].type) &&  (cbxoption[i].type.toLowerCase() ==  "checkbox"))   
	   {   
			cbxoption[i].checked = true;   
	   } 
   }
       
}
function uncheckall(form)
{
   var cbxoption;   
   cbxoption  =  form.elements;   
   for(i=0;i<cbxoption.length;i++)   
   {   
	   if((cbxoption[i].tagName.toLowerCase() ==  "input")  && (cbxoption[i].type) &&  (cbxoption[i].type.toLowerCase() == "checkbox") )   
	   {   
			cbxoption[i].checked = false;   
	   } 
   }  
}
function deleteelective(form)
{
   var eleids;
   var cbxoption;
   var m = 0;   
   cbxoption  =  form.elements;   
   for(i=0;i<cbxoption.length;i++)   
   {   
	   if((cbxoption[i].tagName.toLowerCase() ==  "input")  && (cbxoption[i].type) &&  (cbxoption[i].type.toLowerCase()  == "checkbox")    )   
	   {	   	 
	   	 if (cbxoption[i].checked)
	   	 {
	   	 	m ++;
	   	 	if (m == 1)
	   	 		eleids = cbxoption[i].id;
	   	 	else
	   	 		eleids +=  "," + cbxoption[i].id;
		  }
	   } 
	   form.electiveids.value = eleids;
   }
    if (m == 0)
	{
		alert("你没有选中需要删除的选修课程，请重选！");
		return;
	}
	else
	{
		if(!confirm("是否将选中的选修课程删除?")){
	   	  	return; 
	   }
	}
	 
	location.href="deleteElective.do?eleids="+eleids+"&rnd="+new Date().getTime();
}

function addelective(){
	var flag;
	flag="add"
	location.href = "addGrade.do?flag="+flag;
}

function modifyelective(form)
{
   var cbxoption,studid,username;   
   cbxoption  =  form.elements; 
   var m = 0;  
   for(i=0;i<cbxoption.length;i++)   
   {   
	   if((cbxoption[i].tagName.toLowerCase() ==  "input")  && (cbxoption[i].type) &&  (cbxoption[i].type.toLowerCase()== "checkbox")    )   
	   {   
		   	if (cbxoption[i].checked)
		   	 {
				m++;
				if (m > 1)
				{
					alert("一次只能维护一个学生的成绩，请重选！");
					return;
				}  
				studid = cbxoption[i].id;
		  }
	   } 
   }
   
    if (m == 0)
	{
		alert("你没有选中需要维护成绩的学生，请重选！");
		return;
	} 
	location.href="addElective.do?stuid="+studid+"&from="+form.from.value+"&rnd="+new Date().getTime();
}

function checkForm()
{
	if ((AtTrim(document.form["elective.numElectron"].value) != "") && !isValidNumber(document.form["elective.numElectron"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numElectron"].focus();
		return false;
	}
	if ((AtTrim(document.form["elective.numSoftware"].value) != "") && !isValidNumber(document.form["elective.numSoftware"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numSoftware"].focus();
		return false;
	}
		if ((AtTrim(document.form["elective.numSecurity"].value) != "") && !isValidNumber(document.form["elective.numSecurity"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numSecurity"].focus();
		return false;
	}
		if ((AtTrim(document.form["elective.numJava"].value) != "") && !isValidNumber(document.form["elective.numJava"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numJava"].focus();
		return false;
	}
		if ((AtTrim(document.form["elective.numDB"].value) != "") && !isValidNumber(document.form["elective.numDB"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numDB"].focus();
		return false;
	}
		if ((AtTrim(document.form["elective.numImage"].value) != "") && !isValidNumber(document.form["elective.numImage"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numImage"].focus();
		return false;
	}
		if ((AtTrim(document.form["elective.numDistributed"].value) != "") && !isValidNumber(document.form["elective.numDistributed"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numDistributed"].focus();
		return false;
	}
	if ((AtTrim(document.form["elective.numTest"].value) != "") && !isValidNumber(document.form["elective.numTest"].value)) {
		alert("学生的成绩应为数字，请重新输入!");
		document.form["elective.numTest"].focus();
		return false;
	}
	return true;
}

	function query(electiveForm) {
		var querystr = electiveForm.querystring.value;
		if (electiveForm.queryradio[0].checked) {
			electiveForm.queryoption.value = "0";
			if ((AtTrim(querystr) == "")) {
				alert("请输入需要查询成绩的学生学号或姓名，再进行查询!");
				electiveForm.querystring.focus();
				return;
			}
		} else if (electiveForm.queryradio[1].checked) {
			querystr = electiveForm.querystring1.value;
			electiveForm.queryoption.value = "1";
			if ((AtTrim(querystr) == "") || !isValidNumber(querystr)) {
				alert("需要查询成绩的学生分数为空或不是数字，请重新输入!");
				electiveForm.querystring1.value="";
				electiveForm.querystring1.focus();
				return;
			}
		} else {
			querystr = electiveForm.querystring2.value;
			electiveForm.queryoption.value = "2";
			if ((AtTrim(querystr) == "") || !isValidNumber(querystr)) {
				alert("需要查询的名次为空或不是数字，请重新输入!");
				electiveForm.querystring2.value="";
				electiveForm.querystring2.focus();
				return;
			}
		}
		electiveForm.submit();
	}

	function selectoption(electiveForm, option) {
		if (option == 1)
			{
			electiveForm.queryradio[1].checked = true;
			electiveForm.queryoption="1";
			}
		else if (option == 2)
			{
			electiveForm.queryradio[2].checked = true;
			electiveForm.queryoption="2";
			}
		else
			{
			electiveForm.queryradio[0].checked = true;
			electiveForm.queryoption="0";
			}
}

	