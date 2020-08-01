function validate(){
    var p_Name =  document.forms["admin-form"]["title"].value;
    var price = document.forms["admin-form"]["price"].value;
    var dateOfLaunch = document.forms["admin-form"]["dateOfLaunch"].value;
    var cat = document.forms["admin-form"]["category"].value;
    var flag = 0;
    if(p_Name=""){
     alert("Title is Required.");
     flag=1;
     return false;
    }
    if(p_Name.length<2 || p_Name.length>65){
        alert("Title should have 2 to 65 characters."+p_Name.length());
        flag=1;
        return false;
    }
    if(price=""){
        alert("Price is Required.");
        flag=1;
        return false;
    }
    if(isNaN(parseInt(price))){
        alert("Price has to be a number.");
        flag=1;
        return false;
    }
    if(dateOfLaunch.value=""){
        alert("Select one category.");
        flag=1;
        return false;
    }
    if(cat.value=""){
        alert("Date of launch is required.");
        flag=1;
        return false;
    }
    if (flag==0) {
        return true;
    }
}