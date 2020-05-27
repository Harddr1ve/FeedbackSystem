using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.Model;
using FeedbackSystem;

namespace FeedbackSystem
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FeedbackModelContainer feedbackModel = new FeedbackModelContainer();
            GridView1.DataSource = (from User in feedbackModel.UserSet
                                   select User).ToList();
            Page.DataBind();
        }

        protected void AddUserBtn_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("/AddUser.aspx");
        }
    }
}