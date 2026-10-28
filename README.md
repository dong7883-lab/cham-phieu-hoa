# Chấm Phiếu Hoá

Ứng dụng web chấm **phiếu làm bài kiểm tra định kì môn Hoá học** (THPT, năm học 2026–2027) trên điện thoại. Không cần cài đặt, mở bằng trình duyệt là dùng được.

Cấu trúc phiếu theo mẫu của tổ Lý – Hoá – Sinh – Tin:

| Phần | Nội dung | Điểm |
|---|---|---|
| I | 12 câu nhiều phương án (A/B/C/D) | 0,25 đ/câu – 3,0 đ |
| II | 2 câu Đúng – Sai, mỗi câu 4 ý | đúng 1/2/3/4 ý được 0,1/0,25/0,5/1,0 đ – 2,0 đ |
| III | 8 câu trả lời ngắn | 0,25 đ/câu – 2,0 đ |
| IV | 3 câu tự luận | giáo viên cho 0 – 1,0 đ/câu – 3,0 đ |

Điểm tổng làm tròn 1 chữ số thập phân (Thông tư 22/2021).

## Tính năng

- Nhập bài làm bằng bàn phím trên màn hình (A–D cho Phần I, bàn phím số cho Phần III), tự nhảy câu.
- Tính điểm ngay, có điểm bằng chữ; tô đỏ ô sai và hiện đáp án đúng.
- Gợi ý mã đề khi học sinh ghi sai mã (so khớp Phần I với các mã đề khác).
- Bảng điểm theo kì và lớp: điểm trung bình, cao nhất, thấp nhất, phổ điểm.
- Xuất file Excel (bảng điểm + chi tiết bài làm) hoặc sao chép bảng để dán vào Excel.
- Sao lưu / nhập lại toàn bộ dữ liệu bằng file `.json`.

## Dữ liệu

Bản trên GitHub Pages lưu đáp án và điểm **trong trình duyệt của máy đang dùng** (localStorage). Đổi máy, xoá dữ liệu trình duyệt hay dùng tab ẩn danh sẽ không thấy dữ liệu cũ, vì vậy hãy bấm **Đáp án → Tải file sao lưu** sau mỗi buổi chấm.

Repo **không chứa đáp án đề kiểm tra**. Giáo viên nhập đáp án trong tab *Đáp án* hoặc nhập từ file sao lưu giữ riêng trên máy.

## Cấu trúc mã nguồn

- `cham-phieu-hoa.html` – mã nguồn ứng dụng (HTML/CSS/JS thuần, dùng thư viện SheetJS để xuất Excel).
- `index.html` – trang hoàn chỉnh cho GitHub Pages, sinh ra từ file trên bằng `bash build.sh`. Sửa `cham-phieu-hoa.html` rồi chạy lại script, không sửa trực tiếp `index.html`.
