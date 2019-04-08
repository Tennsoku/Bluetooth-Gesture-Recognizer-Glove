
`timescale 1 ns / 1 ps

	module sensor_fusion_axi_v1_0 #
        (
            // Users to add parameters here
    
            // User parameters ends
            // Do not modify the parameters beyond this line
    
    
            // Parameters of Axi Slave Bus Interface S00_AXI
            parameter integer C_S00_AXI_DATA_WIDTH    = 32,
            parameter integer C_S00_AXI_ADDR_WIDTH    = 5,
    
            // Parameters of Axi Slave Bus Interface S_AXI_INTR
            parameter integer C_S_AXI_INTR_DATA_WIDTH    = 32,
            parameter integer C_S_AXI_INTR_ADDR_WIDTH    = 5,
            parameter integer C_NUM_OF_INTR    = 1,
            parameter  C_INTR_SENSITIVITY    = 32'hFFFFFFFF,
            parameter  C_INTR_ACTIVE_STATE    = 32'hFFFFFFFF,
            parameter integer C_IRQ_SENSITIVITY    = 1,
            parameter integer C_IRQ_ACTIVE_STATE    = 1
        )
        (
            // Users to add ports here
            input wire clk,
            input wire rst,
            inout wire [5:1] JA,
            inout wire [5:1] JB,
            inout wire [5:1] JC,
            output wire signed [15:0] pitch,
            output wire signed [15:0] roll,
            output wire signed [15:0] yaw,
            output wire signed [15:0] x_raw_gyro,
            output wire signed [15:0] y_raw_gyro,
            output wire signed [15:0] z_raw_gyro,
            output wire signed [15:0] x_raw_acl,
            output wire signed [15:0] y_raw_acl,
            output wire signed [15:0] z_raw_acl,
            output wire x_motion,
            output wire y_motion,
            output wire z_motion,
            
            // User ports ends
            // Do not modify the ports beyond this line
    
    
            // Ports of Axi Slave Bus Interface S00_AXI
            input wire  s00_axi_aclk,
            input wire  s00_axi_aresetn,
            input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
            input wire [2 : 0] s00_axi_awprot,
            input wire  s00_axi_awvalid,
            output wire  s00_axi_awready,
            input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
            input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
            input wire  s00_axi_wvalid,
            output wire  s00_axi_wready,
            output wire [1 : 0] s00_axi_bresp,
            output wire  s00_axi_bvalid,
            input wire  s00_axi_bready,
            input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
            input wire [2 : 0] s00_axi_arprot,
            input wire  s00_axi_arvalid,
            output wire  s00_axi_arready,
            output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
            output wire [1 : 0] s00_axi_rresp,
            output wire  s00_axi_rvalid,
            input wire  s00_axi_rready,
    
            // Ports of Axi Slave Bus Interface S_AXI_INTR
            input wire  s_axi_intr_aclk,
            input wire  s_axi_intr_aresetn,
            input wire [C_S_AXI_INTR_ADDR_WIDTH-1 : 0] s_axi_intr_awaddr,
            input wire [2 : 0] s_axi_intr_awprot,
            input wire  s_axi_intr_awvalid,
            output wire  s_axi_intr_awready,
            input wire [C_S_AXI_INTR_DATA_WIDTH-1 : 0] s_axi_intr_wdata,
            input wire [(C_S_AXI_INTR_DATA_WIDTH/8)-1 : 0] s_axi_intr_wstrb,
            input wire  s_axi_intr_wvalid,
            output wire  s_axi_intr_wready,
            output wire [1 : 0] s_axi_intr_bresp,
            output wire  s_axi_intr_bvalid,
            input wire  s_axi_intr_bready,
            input wire [C_S_AXI_INTR_ADDR_WIDTH-1 : 0] s_axi_intr_araddr,
            input wire [2 : 0] s_axi_intr_arprot,
            input wire  s_axi_intr_arvalid,
            output wire  s_axi_intr_arready,
            output wire [C_S_AXI_INTR_DATA_WIDTH-1 : 0] s_axi_intr_rdata,
            output wire [1 : 0] s_axi_intr_rresp,
            output wire  s_axi_intr_rvalid,
            input wire  s_axi_intr_rready,
            output wire  irq
        );
        
        wire start;
        wire sensor_fusion_done;
        wire done_init;
        wire signed [15:0] finger_angle;
        
    // Instantiation of Axi Bus Interface S00_AXI
        sensor_fusion_axi_v1_0_S00_AXI # ( 
            .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
            .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
        ) sensor_fusion_axi_v1_0_S00_AXI_inst (
            .S_AXI_ACLK(s00_axi_aclk),
            .S_AXI_ARESETN(s00_axi_aresetn),
            .S_AXI_AWADDR(s00_axi_awaddr),
            .S_AXI_AWPROT(s00_axi_awprot),
            .S_AXI_AWVALID(s00_axi_awvalid),
            .S_AXI_AWREADY(s00_axi_awready),
            .S_AXI_WDATA(s00_axi_wdata),
            .S_AXI_WSTRB(s00_axi_wstrb),
            .S_AXI_WVALID(s00_axi_wvalid),
            .S_AXI_WREADY(s00_axi_wready),
            .S_AXI_BRESP(s00_axi_bresp),
            .S_AXI_BVALID(s00_axi_bvalid),
            .S_AXI_BREADY(s00_axi_bready),
            .S_AXI_ARADDR(s00_axi_araddr),
            .S_AXI_ARPROT(s00_axi_arprot),
            .S_AXI_ARVALID(s00_axi_arvalid),
            .S_AXI_ARREADY(s00_axi_arready),
            .S_AXI_RDATA(s00_axi_rdata),
            .S_AXI_RRESP(s00_axi_rresp),
            .S_AXI_RVALID(s00_axi_rvalid),
            .S_AXI_RREADY(s00_axi_rready),
            .start(start),
            .done_init(done_init),
            .pitch(pitch),
            .roll(roll),
            .yaw(yaw),
            .finger_angle(finger_angle),
            .gesture(32'd0)
        );
    
    // Instantiation of Axi Bus Interface S_AXI_INTR
        sensor_fusion_axi_v1_0_S_AXI_INTR # ( 
            .C_S_AXI_DATA_WIDTH(C_S_AXI_INTR_DATA_WIDTH),
            .C_S_AXI_ADDR_WIDTH(C_S_AXI_INTR_ADDR_WIDTH),
            .C_NUM_OF_INTR(C_NUM_OF_INTR),
            .C_INTR_SENSITIVITY(C_INTR_SENSITIVITY),
            .C_INTR_ACTIVE_STATE(C_INTR_ACTIVE_STATE),
            .C_IRQ_SENSITIVITY(C_IRQ_SENSITIVITY),
            .C_IRQ_ACTIVE_STATE(C_IRQ_ACTIVE_STATE)
        ) sensor_fusion_axi_v1_0_S_AXI_INTR_inst (
            .S_AXI_ACLK(s_axi_intr_aclk),
            .S_AXI_ARESETN(s_axi_intr_aresetn),
            .S_AXI_AWADDR(s_axi_intr_awaddr),
            .S_AXI_AWPROT(s_axi_intr_awprot),
            .S_AXI_AWVALID(s_axi_intr_awvalid),
            .S_AXI_AWREADY(s_axi_intr_awready),
            .S_AXI_WDATA(s_axi_intr_wdata),
            .S_AXI_WSTRB(s_axi_intr_wstrb),
            .S_AXI_WVALID(s_axi_intr_wvalid),
            .S_AXI_WREADY(s_axi_intr_wready),
            .S_AXI_BRESP(s_axi_intr_bresp),
            .S_AXI_BVALID(s_axi_intr_bvalid),
            .S_AXI_BREADY(s_axi_intr_bready),
            .S_AXI_ARADDR(s_axi_intr_araddr),
            .S_AXI_ARPROT(s_axi_intr_arprot),
            .S_AXI_ARVALID(s_axi_intr_arvalid),
            .S_AXI_ARREADY(s_axi_intr_arready),
            .S_AXI_RDATA(s_axi_intr_rdata),
            .S_AXI_RRESP(s_axi_intr_rresp),
            .S_AXI_RVALID(s_axi_intr_rvalid),
            .S_AXI_RREADY(s_axi_intr_rready),
            .sensor_fusion_done(sensor_fusion_done),
            .irq(irq)
        );
    
        // Add user logic here
        sensor_fusion sensor_fusion_inst(
            .clk(clk),
            .rst(rst),
            .start(start),
            .interrupt_gyro0(JB[5]),
            .miso_gyro0(JB[3]),
            .mosi_gyro0(JB[2]),
            .sclk_gyro0(JB[4]),
            .chip_select_gyro0(JB[1]),
            .interrupt_gyro1(JC[5]),
            .miso_gyro1(JC[3]),
            .mosi_gyro1(JC[2]),
            .sclk_gyro1(JC[4]),
            .chip_select_gyro1(JC[1]),
            .interrupt_acl(JA[5]),
            .miso_acl(JA[3]),
            .mosi_acl(JA[2]),
            .sclk_acl(JA[4]),
            .chip_select_acl(JA[1]),
            .pitch(pitch),
            .roll(roll),
            .yaw(yaw),
            .finger_angle(finger_angle),
            .x_motion(x_motion),
            .y_motion(y_motion),
            .z_motion(z_motion),
            .x_raw_gyro(x_raw_gyro),
            .y_raw_gyro(y_raw_gyro),
            .z_raw_gyro(z_raw_gyro),
            .x_raw_acl(x_raw_acl),
            .y_raw_acl(y_raw_acl),
            .z_raw_acl(z_raw_acl),
            .done(sensor_fusion_done),
            .done_init(done_init)
        );
        // User logic ends
    
        endmodule