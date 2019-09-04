using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using DTO;

namespace BLL
{
    public class nhanvienBLL
    {
        public frmthongtinpphongkh()
        {
            InitializeComponent();
        }

        private void frm_load(object sender, EventArgs e)
        {
            phongBLL pbll = new phongBLL();
            dataGridView1.DataSource = pbll.hienthithongtinphong();
        }

        private void thoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmdangnhap frm = new frmdangnhap();
            frm.Show();

        }
        nhanvienDAL nvDLL = new nhanvienDAL();
        public DataTable hienthinhanvien()
        {
            return nvDLL.hienthinhanvien();
        }
        public bool them_nhanvien(string hoTen, bool gioiTinh, DateTime ngaySinh, string soChungMinh, string diaChi, string soDienThoai, DateTime ngayVaoLam)
        {
            return nvDLL.them_nhanvien( hoTen,  gioiTinh,  ngaySinh,  soChungMinh,  diaChi,  soDienThoai, ngayVaoLam);
        }
        public void xoa_nhanvien(int maNhanVien)
        {
            nvDLL.xoa_nhanvien(maNhanVien);

        }
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

      

        public void UpdateTrail()
        {


            try
            {
                string sql = @"INSERT INTO tblAuditTrail VALUES(@Dater,@Transactype,@Description,@Authority)";
                cm = new SqlCommand(sql, cn);
                cm.Parameters.AddWithValue("@Dater", lblDate.Text);
                cm.Parameters.AddWithValue("@Transactype", "Updation");
                cm.Parameters.AddWithValue("@Description", "Item: '" + lblName.Text + "' had its CriticalLimit UPDATED!");
                cm.Parameters.AddWithValue("@Authority", "Admin");

                cm.ExecuteNonQuery();

            }
            catch (SqlException l)
            {
                MessageBox.Show("Re-input again.!");
                MessageBox.Show(l.Message);
            }
        }
        public void sua_nhanvien(string hoTen, bool gioiTinh, DateTime ngaySinh, string soChungMinh, string diaChi, string soDienThoai, DateTime ngayVaoLam, int maNhanVien)
        {

            nvDLL.sua_nhanvien(hoTen, gioiTinh, ngaySinh, soChungMinh, diaChi, soDienThoai, ngayVaoLam, maNhanVien);
        }
    }
}

