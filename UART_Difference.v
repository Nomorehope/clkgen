module UART_Difference (
    input wire clk,          // тактовый сигнал
    input wire rst,          // сигнал сброса
    input wire UART_rx,      // сигнал UART приемника
    output reg UART_tx       // сигнал UART передатчика
);

reg [7:0] tx_data;          // Регистр для хранения данных, которые будут отправлены
reg [7:0] rx_data;          // Регистр для хранения принятых данных
reg [7:0] difference;       // Регистр для хранения разности

reg [19:0] baud_rate_divider = 868;  // Делитель частоты для скорости 115200 бит/с и тактового сигнала 100 МГц
reg [3:0] bit_counter = 0;          // Счетчик битов для синхронизации

reg [2:0] state;            // Состояние конечного автомата

// Конечный автомат для обработки данных
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 3'b000;
        tx_data <= 8'b0;
        rx_data <= 8'b0;
        difference <= 8'b0;
        bit_counter <= 0;
    end else begin
        case(state)
            3'b000: begin  // Ожидание старта
                if (UART_rx == 1'b0) begin
                    state <= 3'b001;
                end
            end
            3'b001: begin  // Чтение данных
                state <= 3'b010;
                rx_data <= {UART_rx, rx_data[7:1]};  // Сдвиг входных данных
            end
            3'b010: begin  // Ожидание окончания передачи
                if (UART_rx == 1'b1) begin
                    state <= 3'b011;
                end
            end
            3'b011: begin  // Вычисление разности и отправка данных
                difference <= tx_data - rx_data;
                state <= 3'b100;
            end
            3'b100: begin  // Отправка данных
                if (bit_counter < baud_rate_divider) begin
                    bit_counter <= bit_counter + 1;
                end else begin
                    UART_tx <= difference[0];
                    tx_data <= {UART_tx, tx_data[7:1]};  // Сдвиг передаваемых данных
                    bit_counter <= 0;
                    state <= 3'b000;
                end
            end
        endcase
    end
end

endmodule
