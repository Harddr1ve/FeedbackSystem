using FeedbackSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackSystem
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            FeedbackModelContainer model = new FeedbackModelContainer();
            User user = new User();
            user.Id = Guid.NewGuid();
            user.LastName = LastNameTxt.Text.Trim();
            user.Name = NameTxt.Text.Trim();
            user.SureName = SurenameTxt.Text.Trim();
            user.Phone = PhoneTxt.Text.Trim();

            model.UserSet.Add(user);
            model.SaveChanges();

            Page.Response.Redirect("/");
        }
    }
}