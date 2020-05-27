using FeedbackSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackSystem
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Guid id = new Guid(Request.Params["ID"]);
                FeedbackModelContainer model = new FeedbackModelContainer();
                User user = (from u in model.UserSet
                             where u.Id == id
                             select u).First();
                LastNameTxt.Text = user.LastName;
                NameTxt.Text = user.Name;
                SurenameTxt.Text = user.SureName;
                PhoneTxt.Text = user.Phone;

                Session["UserID"] = id;

                FeedbackGrid.DataSource = (from f in model.FeedbackSet
                                           where f.User.Id == id
                                           select f).ToList();
                FeedbackGrid.DataBind();
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            FeedbackModelContainer model = new FeedbackModelContainer();
            Guid id = (Guid)Session["UserID"];
            User user =
           (from п in model.UserSet
            where п.Id == id
            select п).First();
            user.LastName = LastNameTxt.Text.Trim();
            user.Name = NameTxt.Text.Trim();
            user.SureName = SurenameTxt.Text.Trim();
            model.SaveChanges();
            Page.Response.Redirect("/");
        }

        protected void DeleteUserBtn_Click(object sender, EventArgs e)
        {
            FeedbackModelContainer model = new FeedbackModelContainer();
            Guid id = (Guid)Session["UserID"];
            User user = (from u in model.UserSet
                         where u.Id == id
                         select u).First();
            IQueryable<Feedback> feedbacks =
                        from f in model.FeedbackSet
                        where f.User.Id == id
                        select f;
            foreach (Feedback feedback in feedbacks)
            {
                model.FeedbackSet.Remove(feedback);
            }
            model.UserSet.Remove(user);
            model.SaveChanges();
            Response.Redirect("/");
        }

        protected void AddFeedbackBtn_Click(object sender, EventArgs e)
        {
            FeedbackModelContainer model = new FeedbackModelContainer();
            Guid id = (Guid)Session["UserID"];
            User user = (from u in model.UserSet
                         where u.Id == id
                         select u).First();
            Feedback feedback = new Feedback
            {
                Id = Guid.NewGuid(),
                ShortDesc = ShortDescTxt.Text.Trim(),
                LongDesc = LongDescTxt.Text.Trim(),
                Date = DateTime.Now.ToString("g"),
                Positive = Negative.Checked
            };

            user.Feedback.Add(feedback);

            model.SaveChanges();
            Response.Redirect("/EditUser.aspx?Id=" + id.ToString());
        }
    }
}