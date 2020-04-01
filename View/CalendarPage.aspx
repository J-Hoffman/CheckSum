<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalendarPage.aspx.cs" Inherits="CalendarPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CalendarPage</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <p>I would like to have the edit controls in the calendar itself. I will look into that. Otherwise, we will have to utilize buttons 
                and textboxes and such. It would be easy, but having it within the calendar would make more sense.</p>
            <asp:Calendar ID="Calendar1" runat="server" Height="900px" Width="1056px"></asp:Calendar>



        </div>
        <p>This Calendar will probably take up most of the page. It should have the ability to show what dates have events (Maybe just an 
            obvious number in the middle of the box. When one of those dates is clicked, 
            it should show a summarized version of each event for that day below (like a short version of the title, the time, location...). 
            When an event summary is clicked, it should expand the box that the summary is in to show all pertinent information for that particular event.
        </p>
        <p>For the Admin view, they should just be able edit anything as they wish, unrestricted.</p>
        <p>For the Doctor view, they should be able to edit things for their patients only.They should be able to add appointments too and a form should 
            come up to do that. It should still be in that window so that they can see the calendar for their availability. When they click on the 
            appointments, and expand to show all details, it should display information like the phone number of the patient, that way they can call the 
            patient if they need to reschedule, send an appointment reminder, or if they are sick, etc. and should need to contact the patient.
        </p>
        <p>The Patient view should display the calendar as before, but with no edit options. There should be a "Call this number to schedule a visit" 
            piece of text somewhere nearby.
        </p>
    </form>
</body>
</html>
