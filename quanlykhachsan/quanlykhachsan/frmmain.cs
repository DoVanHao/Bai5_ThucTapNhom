using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace quanlykhachsan
{
    public partial class frmmain : Form
    {
        public frmmain()
        {
            InitializeComponent();
        }
 
        
        private void hienthikhachhang()
        {
            khachhangBLL pbll = new khachhangBLL();
            dgkhachhang.DataSource = pbll.hienthikhachhang();
        }
        private void hienthiphong()
        {
            phongBLL pbll = new phongBLL();
            dtgvDanhSachphong.DataSource = pbll.hienthithongtinphong();
        }
        private void hienthitraphong()
        {
            thuephongBLL tpBLL = new thuephongBLL();
            dgtraphong.DataSource = tpBLL.hienthi_thuetheophong();
        }
        private void trangthai(bool t)
        {
            txtPhongtp.Enabled =t;
            dtTuNgaytp.Enabled = t;
            txtphongdt.Enabled = !t;
            dtngaydattruoc.Enabled = !t;
        }
        private void frm_load(object sender, EventArgs e)
        {
         
            hienthiphong();
            hienthikhachhang();
            dtTuNgaytp.Value = DateTime.Now;
        }

        private void btndangxuat_Click(object sender, EventArgs e)
        {
            frmmainquanlykhachsan.ActiveForm.Close();
            frmdangnhap frm = new frmdangnhap();
            frm.Show();
        }

        private void dgkhachhang_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow row = new DataGridViewRow();
            row = dgkhachhang.Rows[e.RowIndex];
            txtmakhtp.Text = row.Cells["maKhachHang"].Value.ToString();
        }

        private void btThuePhongOK_Click(object sender, EventArgs e)
        {
            thuephongBLL tpBLL = new thuephongBLL();
            tpBLL.them_thuephong(int.Parse(txtmakhtp.Text.Trim()), dtTuNgaytp.Value, int.Parse(txtPhongtp.Text.Trim()));
            MessageBox.Show("thuê phòng thàng công", "Thông báo");
        }

        private void Tabphong_Click(object sender, EventArgs e)
        {
            hienthiphong();
            hienthitraphong();
        }

        private void bHuyBo_Click(object sender, EventArgs e)
        {
            txtPhongtp.Clear();
            txtphongdt.Clear();
            txtmakhtp.Clear();
        }

        private void btTimKiem_Click(object sender, EventArgs e)
        {

        }

        private void cbTheoPhong_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbTheoTen_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbThoiGian_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbTheoDT_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbTheoMaKH_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbTheoCMND_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbTheoDiaChi_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
