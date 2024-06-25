<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Box Cricket Reg</h2>
<form action="savereg" method="post">
  Name:<input type="text" name="studentName" />
   <span style="color:red">${studentNameError}</span><br><br>
  Playing Type:
  Batsman: <input type="radio" name="playerType" value="Batsman" ${playerTypeValue!=null && playerTypeValue.equals("Batsman")?"checked":""}/>
  Bowller: <input type="radio" name="playerType" value="Bowller" ${playerTypeValue!=null && playerTypeValue.equals("Bowller")?"checked":""}/>
  AllRounder: <input type="radio" name="playerType" value="AllRounder" ${playerTypeValue!=null && playerTypeValue.equals("AllRounder")?"checked":""}/>
 <span style="color:red">${playerTypeError}</span>
  <br><br>
  Food Preference: <br>
            <select name="foodPreference">
            <option value="-1">---Select Your Food Preference---</option>
						<option value="Regular" ${foodPreferenceValue!=null && foodPreferenceValue.equals("Regular")?"selected":""}>Regular</option>
						<option value="Jain" ${foodPreferenceValue!=null && foodPreferenceValue.equals("Jain")?"selected":""}>Jain</option>
            </select>
            <span style="color:red">${foodPreferenceError}</span>
            <br><br>
            
    Drink: <br>
            RB <input type="checkbox" name="drink" value="rb" ${drinkValue.contains("rb")?"checked":""}><br>
            MD <input type="checkbox" name="drink" value="md"  ${drinkValue.contains("md")?"checked":""}><br>
             TH<input type="checkbox" name="drink" value="th"  ${drinkValue.contains("th")?"checked":""}><br>
            Lj <input type="checkbox" name="drink" value="lj"  ${drinkValue.contains("lj")?"checked":""}><br>
            Co <input type="checkbox" name="drink" value="co"  ${drinkValue.contains("co")?"checked":""}><br><br>          
               <span style="color:red">${DrinkError }</span>
 <input type="submit" value="Register">
</form>

</body>
</html>