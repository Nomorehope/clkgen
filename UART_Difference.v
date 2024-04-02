module UART_Difference (
    input wire clk,          // тактовый сигнал
    input wire rst,          // сигнал сброса
    input wire UART_rx,      // сигнал UART приемника
    output reg UART_tx,      // сигнал UART передатчика
    output wire [7:0] difference // разность в тактах
);

reg [7:0] tx_data;          // Регистр для хранения данных, которые будут отправлены
reg [7:0] prev_tx_data;     // Регистр для хранения предыдущих отправленных данных
reg [7:0] difference_reg;  // Регистр для хранения разности в тактах

reg [19:0] baud_rate_divider = 868;  // Делитель частоты для скорости 115200 бит/с и тактового сигнала 100 МГц
reg [3:0] bit_counter = 0;          // Счетчик битов для синхронизации

reg [2:0] state;            // Состояние конечного автомата

// Конечный автомат для обработки данных
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 3'b000;
        tx_data <= 8'b0;
        prev_tx_data <= 8'b0;
        difference_reg <= 8'b0;
        bit_counter <= 0;
    end else begin
        case(state)
            3'b000: begin  // Ожидание старта
                if (bit_counter == baud_rate_divider) begin
                    state <= 3'b001;
                    prev_tx_data <= tx_data;
                end
            end
            3'b001: begin  // Отправка данных
                if (bit_counter < baud_rate_divider) begin
                    bit_counter <= bit_counter + 1;
                end else begin
                    UART_tx <= tx_data[0];
                    tx_data <= {UART_tx, tx_data[7:1]};  // Сдвиг передаваемых данных
                    bit_counter <= 0;
                    state <= 3'b000;
                    difference_reg <= difference_reg + 1;
                end
            end
        endcase
    end
end

assign difference = difference_reg;

endmodule
