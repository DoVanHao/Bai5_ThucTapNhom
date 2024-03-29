﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class khachhangDAL
    {
        public DataTable hienthikhachhang()
        {
            SqlConnection cnn = ketnoi.Get();
            // Khai báo và khởi tạo đối tượng Command, truyền vào tên thủ tục tương ứng
            SqlCommand cmd = new SqlCommand("hienthikhachhang", cnn);
            // Khai báo kiểu thực thi là Thực thi thủ tục
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cnn;
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;
        }
        public bool them_khachhang(string tenKhachHang, DateTime ngaySinh, bool gioiTinh, string chungMinhNhanDan, string diaChi, string soDienThoai, string quocTich)
        {
            SqlConnection cnn = ketnoi.Get();
            SqlCommand cmd = new SqlCommand("them_khachhang", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tenKhachHang", tenKhachHang);
            cmd.Parameters.AddWithValue("ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("chungMinhNhanDan", chungMinhNhanDan);
            cmd.Parameters.AddWithValue("diaChi", diaChi);
            cmd.Parameters.AddWithValue("soDienThoai", soDienThoai);
            cmd.Parameters.AddWithValue("quocTich", quocTich);

            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            if (i != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
                public void xoa_nhanvien(int maKhachHang)
        {

            SqlConnection cnn = ketnoi.Get();
            SqlCommand cmd = new SqlCommand("xoa_khachhang", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("maKhachHang", maKhachHang);
            int i = cmd.ExecuteNonQuery();
            cnn.Close();

        }

        public void sua_khachhang(string tenKhachHang, DateTime ngaySinh, bool gioiTinh, string chungMinhNhanDan, string diaChi, string soDienThoai, string quocTich,int maKhachHang)
        {
        //tao ket noi trong co so du lieu
            SqlConnection cnn = ketnoi.Get();
            SqlCommand cmd = new SqlCommand("sua_khachhang", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tenKhachHang", tenKhachHang);
            cmd.Parameters.AddWithValue("ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("chungMinhNhanDan", chungMinhNhanDan);
            cmd.Parameters.AddWithValue("diaChi", diaChi);
            cmd.Parameters.AddWithValue("soDienThoai", soDienThoai);
            cmd.Parameters.AddWithValue("quocTich", quocTich);
            cmd.Parameters.AddWithValue("maKhachHang", maKhachHang);

            int i = cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public DataTable hienthi1nhanvien()
        {
            SqlConnection cnn = ketnoi.Get();
            // Khai báo và khởi tạo đối tượng Command, truyền vào tên thủ tục tương ứng
            SqlCommand cmd = new SqlCommand("hienthitatcanhanvien", cnn);
            // Khai báo kiểu thực thi là Thực thi thủ tục
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cnn;
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;
        }
        public void sua_1nhanvien(string hoTen, bool gioiTinh, DateTime ngaySinh, string soChungMinh, string diaChi, string soDienThoai, DateTime ngayVaoLam, int maNhanVien)
        {
            SqlConnection cnn = ketnoi.Get();
            SqlCommand cmd = new SqlCommand("sua_nhanvien", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("hoTen", hoTen);
            cmd.Parameters.AddWithValue("gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("soChungMinh", soChungMinh);
            cmd.Parameters.AddWithValue("diaChi", diaChi);
            cmd.Parameters.AddWithValue("soDienThoai", soDienThoai);
            cmd.Parameters.AddWithValue("ngayVaoLam", ngayVaoLam);
            cmd.Parameters.AddWithValue("maNhanVien", maNhanVien);
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
        }
        public bool them_nhieunhanvien(string hoTen, bool gioiTinh, DateTime ngaySinh, string soChungMinh, string diaChi, string soDienThoai, DateTime ngayVaoLam)
        {
            SqlConnection cnn = ketnoi.Get();
            SqlCommand cmd = new SqlCommand("them_nhanvien", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("hoTen", hoTen);
            cmd.Parameters.AddWithValue("gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("ngaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("soChungMinh", soChungMinh);
            cmd.Parameters.AddWithValue("diaChi", diaChi);
            cmd.Parameters.AddWithValue("soDienThoai", soDienThoai);
            cmd.Parameters.AddWithValue("ngayVaoLam", ngayVaoLam);

            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            if (i != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public TEST()
        {

        }
    }
}
