using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DAL;
using System.Data.SqlClient;

namespace quanlykhachsan
{
    public partial class frmdangnhap : Form
    {
        public frmdangnhap()
        {
            InitializeComponent();
        }

        private void btndangnhap_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EVMFSFV\SQLEXPRESS;Initial Catalog=quanlykhachsan;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From [dbo].[nguoidung] where taiKhoan = '" + txttaikhoan.Text + "' and matKhau = '" + txtmatkhau.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if ((dt.Rows[0][0]).ToString() == "1")
            {
                this.Hide(); // Form Đăng Nhập sẽ ẩn đi => MainForm sẽ load lên
                frmmainquanlykhachsan frm = new frmmainquanlykhachsan();
                frm.Show();
            }
            else
            {
                lbtb.Text = "Tài khoản hoặc mật khẩu sai.vui lòng thử lại!!";

            }
            if (cbkhach.Checked == true)
            {
                trangthai(false);
                this.Hide(); // Form Đăng Nhập sẽ ẩn đi => MainForm sẽ load lên
                frmthongtinpphongkh frm = new frmthongtinpphongkh(); //chi xem duoc thong tin phong
                frm.Show();

            }
           
        }
        private void trangthai( bool t)
        {
            txttaikhoan.Enabled = t;
            txtmatkhau.Enabled = t;
        }
        private void thanhtoan()
        {
            TimeSpan Time = (dttpngayketthucthue.Value - dttpngaybatdauthue.Value);
            int TongSoNgay = Time.Days + 1;
            int ngaybatdau = dttpngaybatdauthue.Value.Day;
            int ngayketthuc = dttpngayketthucthue.Value.Day;

            if (ngaybatdau > ngayketthuc)/// vào từ sáng đén tối vẫn tính là 1 ngày
                MessageBox.Show("nhập sai ngày!! vui long nhập lại", "Thông báo");
            else
                txttongtien.Text = (TongSoNgay * int.Parse(txtdongiatp.Text)).ToString();
        }
        private void TPTinhTien_Click(object sender, EventArgs e)
        {
            thanhtoan();
           // thuephongBLL tpBLL = new thuephongBLL();
         //   tpBLL.tinhtien(dttpngayketthucthue.Value, float.Parse(txttongtien.Text.Trim()),int.Parse(txtmathuephong.Text.Trim()),int.Parse(txtTPPhong.Text.Trim()));
            hienthitraphong();
            MessageBox.Show("Số tiền phải trả là : "+txttongtien.Text,"Tổng tiền");  
        }
        private void frm_load(object sender, EventArgs e)
        {
          
        }
		
		        private void btnThemSP_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < dgvSPX.Rows.Count; i++)
            {
                if (dgvSPX.Rows[i].Cells[0].Value == dgvSP.Rows[dgvSP.SelectedRows[0].Index].Cells[0].Value)
                {
                    MessageBox.Show("Sản phẩm đã được chọn !!!", "Nhắc nhở", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }
            if (dgvSP.SelectedRows.Count > 0)
            {
                dgvSPX.Rows.AddRange(new DataGridViewRow());
                dgvSPX.Rows[dgvSPX.RowCount - 2].Cells[0].Value = dgvSP.Rows[dgvSP.SelectedRows[0].Index].Cells[0].Value;
                dgvSPX.Rows[dgvSPX.RowCount - 2].Cells[1].Value = numericUpDownSL.Value;
                dgvSPX.Rows[dgvSPX.RowCount - 2].Cells[2].Value = numericUpDownGN.Value;
                dgvSPX.Rows[dgvSPX.RowCount - 2].Cells[3].Value = int.Parse(numericUpDownSL.Value.ToString()) * long.Parse(numericUpDownGN.Value.ToString());
            }
        }



        private void btnthoat_Click(object sender, EventArgs e)
        {
            Application.Exit(); ;
        }
		
		
    }
}
