using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
using System.Data;

namespace BLL
{
   public class thuephongBLL
    {
        thuephongDAL tpDAL = new thuephongDAL();
        public bool them_thuephong(int maKhachHang, DateTime ngayDen, int maPhong)
        {
            return tpDAL.them_thuephong(maKhachHang, ngayDen, maPhong);
        }
        public DataTable hienthi_thuetheophong()
        {
            return tpDAL.hienthi_thuetheophong();
        }
        private void hienthi()
        {
            khachhangBLL pbll = new khachhangBLL();
            dataGridView1.DataSource = pbll.hienthikhachhang();
            pbll.ToString();
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
