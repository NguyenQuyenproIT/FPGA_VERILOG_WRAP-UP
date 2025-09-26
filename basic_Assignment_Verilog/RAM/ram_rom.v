module bram_10 #(
    parameter DATA_WIDTH = 15,
    parameter MEM_SIZE = 256  // 2^10 = 1024 words
)(
    input                       clk,
    // Port A
    input                       we,
    input [15:0] din,
    output reg dout_en,
    output reg [15:0] dout
);

(*RAM_STYLE  = "block"*)  reg [DATA_WIDTH-1:0] mem [0:MEM_SIZE - 1];
(*RAM_STYLE  = "block"*)  reg [DATA_WIDTH-1:0] rom [0:16];
reg [$clog2(MEM_SIZE) - 1: 0] wr_addr = 0, rd_addr = 0;
reg recev_done = 0;

initial begin
    $readmemh("rom.hex", rom);
end

always @(posedge clk) begin
    if (we) begin
        mem[wr_addr] <= din;  // ghi dữ liệu vào các ô nhớ
        wr_addr <= wr_addr + 1'b1; // tăng địa chỉ ghi thêm 1 để chuẩn bị cho lần kế tiếp, như là mở rộng lên 1 ô nhớ
        if(wr_addr >= 9) begin // ở câu lệnh trên, khi wr_addr = 9 thì xuống đây sẽ thực hiện câu lệnh dưới luôn
            recev_done <= 1'b1; // đặt recv lên 1 coi như đã nhận đủ 10 giá trị, để chuẩn bị cho quá trình đọc
			
			// tại thời điểm wr_addr == 9 thì đã gán xong din mem[0] -> mem[9]
            wr_addr <= 1'b0;  // reset lại giá trị wr_addr để cho lần đếm tiếp theo (nếu có)
        end     
    end 
	
	
    if(recev_done) begin // bắt đầu quá trình đọc
        rd_addr <= rd_addr + 1'b1; // sẽ tăng lên 1 nhưng mà ở chu kỳ sau, ban đầu vẫn là vị trí 0
//        dout <= rom[rd_addr];
        dout <= mem[rd_addr]; // bắt đầu đọc ra các giá trị đã lưu vào mem trước đó mem[0] -> mem[9]
        dout_en <= 1'b1; //Dùng để bật tín hiệu "đã có dữ liệu đầu ra" để thông báo cho thiết bị hiển thị hoặc module tiêu thụ rằng dout hiện đang có dữ liệu hợp lệ.
    end
    if(rd_addr > 9) begin // sau ghi đọc hết các giá trị ở trong mem, Đọc xong mem[9] rồi mới reset ở chu kỳ sau
        dout_en <= 1'b0; // Tắt cờ xuất dữ liệu — báo hiệu rằng không còn dữ liệu đầu ra nữa.
        recev_done <= 1'b0; // Reset cờ trạng thái "đã ghi xong" → để tránh đọc lại vòng cũ.
        rd_addr <= 1'b0; // Reset bộ đếm địa chỉ đọc về 0 → để sẵn sàng đọc lại từ đầu ở vòng tiếp theo
    end
end
endmodule