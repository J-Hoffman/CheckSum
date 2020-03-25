<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>Galactica Dashboard</title>    
</head>
<body>
    <form id="form1" runat="server">   

        <p>I plan on adding a basic nav bar at the top. The nav bar will contain the following links:
            Home    Calendar    News    Contact Patients    Files   My Account  Help    Logout
        </p>
        <br />
        <div id="Upcoming">
            <p>I envision this section of the page being the left third. Here, there will be 
                upcoming events on the user's calendar. The top bar of this section will have a link to 
                "go to calendar."
            </p>
        </div>
        <br />
        <div id="News">
            <p>I envision this section taking the middle third of the page. This section will contain important 
                news and notices from the Galactica Medical Group that may impact patients. Clicking on an 
                article here will probably just open the article in another tab, assuming they post news on 
                their own website... I hope that a medical group would have a news section on their website for
                pertinent information. On the doctor page, it will also show news for the staff.
            </p>
        </div>
        <br />
        <div id="Patients">
            <p>I envision this section of the page being the right third of the page. Here, there will be 
                links to the patients' accounts (profile pages). IRL, it would be useful to have a search 
                bar at the top, but... meh.
            </p>
        </div>

    </form>
</body>
</html>
