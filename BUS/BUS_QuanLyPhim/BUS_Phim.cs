﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS.BUS_QuanLyPhim
{
    public class BUS_Phim
    {
        /// <summary>
        /// Phương thức xóa phim
        /// </summary>
        /// <param name="maPhim"></param>
        public static void XoaPhim(int maPhim)
        {
            DataTable dt = DAL.DAL_QuanLyPhim.DAL_Phim.ThongTinPhimTheoMa(maPhim);
            if (dt.Rows.Count > 0)
            {
                DAL.DAL_QuanLyPhim.DAL_Phim.Phim_Delete(maPhim);
            }
        }
        /// <summary>
        /// Phương thức thêm mới phim
        /// </summary>
        /// <param name="tenPhim"></param>
        /// <param name="anhDaiDien"></param>
        /// <param name="maTheLoai"></param>
        /// <param name="maQuocGia"></param>
        /// <param name="thoiLuong"></param>
        /// <param name="khoiChieu"></param>
        /// <param name="ketThuc"></param>
        /// <param name="daoDien"></param>
        /// <param name="noiDung"></param>
        /// <param name="trailer"></param>
        /// <param name="maDinhDang"></param>
        /// <param name="maNhanVien"></param>
        public static void Themmoiphim(string tenPhim, string anhDaiDien, int maTheLoai, int maQuocGia, string thoiLuong, string khoiChieu, string ketThuc,
            string daoDien, string noiDung, string trailer, int maDinhDang, int maNhanVien)
        {
            DateTime kc, kt;
            kc = XuLyNgayThang.XuLyChuoiNgayThang(khoiChieu);
            kt = XuLyNgayThang.XuLyChuoiNgayThang(ketThuc);
            DAL.DAL_QuanLyPhim.DAL_Phim.Phim_Inser(tenPhim, anhDaiDien, maTheLoai, maQuocGia, thoiLuong, kc, kt, daoDien, noiDung, trailer, maDinhDang, maNhanVien);
        }

        public static object TimKiem(string v)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Phương thức cập nhật phim
        /// </summary>
        /// <param name="maPhim"></param>
        /// <param name="tenPhim"></param>
        /// <param name="anhDaiDien"></param>
        /// <param name="maTheLoai"></param>
        /// <param name="maQuocGia"></param>
        /// <param name="thoiLuong"></param>
        /// <param name="khoiChieu"></param>
        /// <param name="ketThuc"></param>
        /// <param name="daoDien"></param>
        /// <param name="noiDung"></param>
        /// <param name="trailer"></param>
        /// <param name="maDinhDang"></param>
        /// <param name="maNhanVien"></param>
        public static void CapNhatPhim(int maPhim, string tenPhim, string anhDaiDien, int maTheLoai, int maQuocGia, string thoiLuong, string khoiChieu, string ketThuc,
            string daoDien, string noiDung, string trailer, int maDinhDang, int maNhanVien)
        {
            DataTable dt = DAL.DAL_QuanLyPhim.DAL_Phim.ThongTinPhimTheoMa(maPhim);
            if (dt.Rows.Count > 0)
            {
                DateTime kc, kt;
                kc = XuLyNgayThang.XuLyChuoiNgayThang(khoiChieu);
                kt = XuLyNgayThang.XuLyChuoiNgayThang(ketThuc);
                DAL.DAL_QuanLyPhim.DAL_Phim.Phim_Update(maPhim,tenPhim, anhDaiDien, maTheLoai, maQuocGia, thoiLuong, kc, kt, daoDien, noiDung, trailer, maDinhDang, maNhanVien);
            }
        }
        /// <summary>
        /// Phương thức lấy tất cả phim
        /// </summary>
        /// <returns></returns>
        public static DataTable LayTatCaPhim()
        {
            return DAL.DAL_QuanLyPhim.DAL_Phim.ThongTinTatCaPhim();
        }
        /// <summary>
        /// Phương thức lấy phim theo mã
        /// </summary>
        /// <param name="maPhim"></param>
        /// <returns></returns>
        public static DataTable LayPhimTheoMa(int maPhim)
        {
            return DAL.DAL_QuanLyPhim.DAL_Phim.ThongTinPhimTheoMa(maPhim);
        }

        public static void CapNhatPhim(int v1, object maPhim, string v2, object tenPhim, string v3, object anhDaiDien, int v4, object maTheLoai, int v5, object maQuocGia, string v6, object thoiLuong, string v7, object khoiChieu, string v8, object ketThuc, string v9, object daoDien, string v10, object noiDung, string v11, object trailer, int v12, object maDinhDang, int v13, object maNhanVien)
        {
            throw new NotImplementedException();
        }

        public class ThemMoiPhim
        {
        }
    }
}
