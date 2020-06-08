﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL_QuanLyLichChieu
{
    public class DAL_Ghe
    {
        #region Phương thức xóa ghế
        /// <summary>
        /// Phương thức xóa ghế
        /// </summary>
        /// <param name="maGhe"></param>
        public static void Ghe_Delete(int maGhe)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[tb_Ghe] WHERE MaGhe=@maGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maGhe", maGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới ghế
        /// <summary>
        /// Phương thức thêm mới ghế
        /// </summary>
        /// <param name="maPhong"></param>
        /// <param name="maLoaiGhe"></param>
        /// <param name="soGhe"></param>
        /// <param name="trangThai"></param>
        public static void Ghe_Inser(int maPhong, int maLoaiGhe, string soGhe, int trangThai)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[tb_Ghe]([MaPhong],[MaLoaiGhe],[SoGhe],[MaTrangThai]) VALUES(@maPhong,@maLoaiGhe,@soGhe,@trangThai)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            cmd.Parameters.AddWithValue("@trangThai", trangThai);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin một ghế
        /// <summary>
        /// Phương thức chỉnh sửa thông tin một ghế
        /// </summary>
        /// <param name="maGhe"></param>
        /// <param name="maPhong"></param>
        /// <param name="maLoaiGhe"></param>
        /// <param name="soGhe"></param>
        /// <param name="trangThai"></param>
        public static void Ghe_Update(int maGhe, int maPhong, int maLoaiGhe, string soGhe, int trangThai)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[tb_Ghe] SET [MaPhong] = @maPhong,[MaLoaiGhe] = @maLoaiGhe,[SoGhe] = @soGhe,[MaTrangThai] = @trangThai WHERE MaGhe=@maGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maPhong", maPhong);
            cmd.Parameters.AddWithValue("@maLoaiGhe", maLoaiGhe);
            cmd.Parameters.AddWithValue("@soGhe", soGhe);
            cmd.Parameters.AddWithValue("@trangThai", trangThai);
            cmd.Parameters.AddWithValue("@maGhe", maGhe);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả ghế
        /// <summary>
        /// Phương thức lấy ra danh sách tất cả ghế
        /// </summary>
        /// <returns></returns>
        public static DataTable ThongTinTatCaGhe()
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaGhe],tb_Phong.TenPhong,tb_LoaiGhe.TenLoai,tb_SoGhe.SoGhe,SoHang,SoCot,tb_TrangThai.MoTa FROM [dbo].[tb_Ghe] " +
                "INNER JOIN tb_Phong ON tb_Phong.MaPhong=tb_Ghe.MaPhong INNER JOIN tb_LoaiGhe ON tb_LoaiGhe.MaLoaiGhe=tb_Ghe.MaLoaiGhe " +
                "INNER JOIN tb_TrangThai ON tb_TrangThai.MaTrangThai=tb_Ghe.MaTrangThai INNER JOIN tb_SoGhe ON tb_SoGhe.SoGhe=tb_Ghe.SoGhe");
            cmd.CommandType = CommandType.Text;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra thông tin ghế theo mã ghế
        /// <summary>
        /// Phương thức lấy ra thông tin ghế theo mã ghế
        /// </summary>
        /// <param name="maGhe"></param>
        /// <returns></returns>
        public static DataTable ThongTinGheTheoMa(int maGhe)
        {
            SqlCommand cmd = new SqlCommand("SELECT [MaGhe],tb_Phong.TenPhong,tb_LoaiGhe.TenLoai,tb_SoGhe.SoGhe,SoHang,SoCot,tb_TrangThai.MoTa FROM [dbo].[tb_Ghe] " +
                "INNER JOIN tb_Phong ON tb_Phong.MaPhong=tb_Ghe.MaPhong INNER JOIN tb_LoaiGhe ON tb_LoaiGhe.MaLoaiGhe=tb_Ghe.MaLoaiGhe " +
                "INNER JOIN tb_TrangThai ON tb_TrangThai.MaTrangThai=tb_Ghe.MaTrangThai INNER JOIN tb_SoGhe ON tb_SoGhe.SoGhe=tb_Ghe.SoGhe WHERE [MaGhe]=@maGhe");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@maGhe", maGhe);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}