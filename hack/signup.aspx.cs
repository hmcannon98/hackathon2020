using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hack
{
    public partial class signup : System.Web.UI.Page
    {
        private string user;
        private string pass;
        private string name;
        private int height;
        private int weight;
        private string sex;
        private int age;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSign2_Click(object sender, EventArgs e)
        {
            if (tbxAge.Text != "" && tbxWeight.Text != "" && tbxUser.Text != "" && tbxHeight.Text != "" && tbxName.Text != "" && tbxPass.Text != "")
            {
                Label3.Visible = false;
                Session.Add("User", tbxUser.Text);
                Session.Add("Pass", tbxPass.Text);
                Session.Add("Name", tbxName.Text);
                Session.Add("Height", Convert.ToInt32(tbxHeight.Text));
                Session.Add("Weight", Convert.ToInt32(tbxWeight.Text));
                Session.Add("Sex", ddSex.SelectedValue);
                Session.Add("Age", Convert.ToInt32(tbxAge.Text));
                Response.Redirect("daily.aspx");
            }
            else
            {
                Label3.Visible = true;
            }
        }
    }
}