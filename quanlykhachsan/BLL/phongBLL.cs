using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;

namespace BLL
{
   public class phongBLL
    {

        public frmthongtinpphongkh()
        {
            InitializeComponent();
        }

        private void button_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmdangnhap frm = new frmdangnhap();
            frm.Show();

        }
        
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }
        private void hienthi()
        {
            khachhangBLL pbll = new khachhangBLL();
            dataGridView1.DataSource = pbll.hienthikhachhang();
            pbll.ToString();
        }
        private void button_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmCriticalItems CI = new frmCriticalItems();
            CI.Show();
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
