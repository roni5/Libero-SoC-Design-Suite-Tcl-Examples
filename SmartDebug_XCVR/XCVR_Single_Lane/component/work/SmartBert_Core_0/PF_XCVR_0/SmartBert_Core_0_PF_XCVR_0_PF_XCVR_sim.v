`timescale 1 ns/100 ps
// Version: 2022.1 2022.1.0.1


module SmartBert_Core_0_PF_XCVR_0_PF_XCVR(
       LANE0_RXD_P,
       LANE0_RXD_N,
       LANE0_TXD_P,
       LANE0_TXD_N,
       TX_BIT_CLK_0,
       TX_PLL_LOCK_0,
       TX_PLL_REF_CLK_0,
       LANE0_RX_IDLE,
       LANE0_RX_READY,
       LANE0_RX_VAL,
       LANE0_TX_CLK_STABLE,
       LANE0_RX_DATA,
       LANE0_RX_BYPASS_DATA,
       LANE0_TX_DATA,
       LANE0_PCS_ARST_N,
       LANE0_PMA_ARST_N,
       LANE0_RX_SLIP,
       LANE0_TX_CLK_R,
       LANE0_RX_CLK_R,
       LANE0_CDR_REF_CLK_0
    );
input  LANE0_RXD_P;
input  LANE0_RXD_N;
output LANE0_TXD_P;
output LANE0_TXD_N;
input  TX_BIT_CLK_0;
input  TX_PLL_LOCK_0;
input  TX_PLL_REF_CLK_0;
output LANE0_RX_IDLE;
output LANE0_RX_READY;
output LANE0_RX_VAL;
output LANE0_TX_CLK_STABLE;
output [79:0] LANE0_RX_DATA;
output LANE0_RX_BYPASS_DATA;
input  [79:0] LANE0_TX_DATA;
input  LANE0_PCS_ARST_N;
input  LANE0_PMA_ARST_N;
input  LANE0_RX_SLIP;
output LANE0_TX_CLK_R;
output LANE0_RX_CLK_R;
input  LANE0_CDR_REF_CLK_0;

    wire gnd_net, vcc_net, LANE0_tx_rclkint_input_net, 
        LANE0_rx_rclkint_input_net;
    
    RCLKINT LANE0_TX_rclkint (.A(LANE0_tx_rclkint_input_net), .Y(
        LANE0_TX_CLK_R));
    XCVR_PMA #( .MAIN_QMUX_R0_QRST0_SRC(3'b001), .MAIN_QMUX_R0_QRST1_SRC(3'b011)
        , .MAIN_QMUX_R0_QRST2_SRC(3'b000), .MAIN_QMUX_R0_QRST3_SRC(3'b000)
        , .MSC_UNIQUE("TX_DATA_RATE:5000"), .JA_REF_CLK_SEL(""), .DATA_RATE(5000)
        , .REG_FILE(""), .INTERFACE_LEVEL("-1"), .GPSSMAIN_SOFT_RESET_NV_MAP(1'b0)
        , .GPSSMAIN_SOFT_RESET_V_MAP(1'b0), .GPSSMAIN_SOFT_RESET_PERIPH(1'b0)
        , .GPSSMAIN_SPARE_SCRATCHPAD(8'b00000000), .GPSSMAIN_SPARE_SPARE_CTRL(24'b000100010001000000000000)
        , .PMA_CMN_SOFT_RESET_NV_MAP(1'b0), .PMA_CMN_SOFT_RESET_V_MAP(1'b0)
        , .PMA_CMN_SOFT_RESET_PERIPH(1'b0), .PMA_CMN_TXPLL_CLKBUF_TXPLL_DUALCLK1_MODE(2'b00)
        , .PMA_CMN_TXPLL_CLKBUF_TXPLL_DUALCLK1_ENTERM(2'b00), .PMA_CMN_TXPLL_CLKBUF_TXPLL_DUALCLK0_MODE(2'b10)
        , .PMA_CMN_TXPLL_CLKBUF_TXPLL_DUALCLK0_ENTERM(2'b00), .PMA_CMN_TXPLL_CLKBUF_TXPLL_DUALCLK1_EN_HYST(1'b0)
        , .PMA_CMN_TXPLL_CLKBUF_TXPLL_DUALCLK0_EN_HYST(1'b0), .PMA_CMN_TXPLL_CLKBUF_TXPLL_CLKBUF_EN_RDIFF(1'b0)
        , .PMA_CMN_TXPLL_CLKBUF_TXPLL_CLKBUF_EN_UDRIVE_P(1'b1), .PMA_CMN_TXPLL_CLKBUF_TXPLL_CLKBUF_EN_UDRIVE_N(1'b1)
        , .PMA_CMN_TXPLL_CLKBUF_TXPLL_CLKBUF_EN_PULLUP(1'b0), .PMA_CMN_TXPLL_CLKBUF_TXPLL_CLKBUF_EN_APAD(1'b0)
        , .PMA_CMN_TXPLL_CTRL_TXPLL_BWSEL(1'b0), .PMA_CMN_TXPLL_CTRL_TXPLL_VBGREF_SEL(1'b0)
        , .PMA_CMN_TXPLL_CTRL_TXPLL_FBDIV_SEL(2'b00), .PMA_CMN_TXPLL_CTRL_TXPLL_DSMPD(1'b0)
        , .PMA_CMN_TXPLL_CTRL_TXPLL_PHASESTEPAMOUNT(8'b00000110), .PMA_CMN_TXPLL_CTRL_TXPLL_STEP_PHASE(1'b0)
        , .PMA_CMN_TXPLL_CTRL_TXPLL_PD(1'b0), .PMA_CMN_TXPLL_CTRL_TXPLL_AUXDIVPD(1'b0)
        , .PMA_CMN_TXPLL_CTRL_TXPLL_CLKRESETEN(1'b0), .PMA_CMN_TXPLL_CTRL_TXPLL_CLKRESET(1'b0)
        , .PMA_CMN_TXPLL_CTRL_RESET_RTL_TXPLL(1'b0), .PMA_CMN_TXPLL_CTRL_RESET_RTL(1'b0)
        , .PMA_CMN_TXPLL_CTRL_TXPLL_FOUTAUXDIV2_SEL(1'b0), .PMA_CMN_TXPLL_CLK_SEL_TXPLL_REFCLK_SEL_HM(2'b11)
        , .PMA_CMN_TXPLL_CLK_SEL_TXPLL_REFCLK_SEL_SM(3'b000), .PMA_CMN_TXPLL_CLK_SEL_CASCADE_CLK_SEL_HM(2'b00)
        , .PMA_CMN_TXPLL_CLK_SEL_CASCADE_CLK_SEL_SM(3'b111), .PMA_CMN_TXPLL_CLK_SEL_TXPLL_JA_FREF_SEL(3'b000)
        , .PMA_CMN_TXPLL_CLK_SEL_CDRCLK_LN01_INT_SEL(3'b111), .PMA_CMN_TXPLL_CLK_SEL_CDRCLK_LN23_INT_SEL(3'b111)
        , .PMA_CMN_TXPLL_CLK_SEL_CDRCLK_OUT_UP_SEL(3'b111), .PMA_CMN_TXPLL_CLK_SEL_CDRCLK_OUT_DN_SEL(3'b111)
        , .PMA_CMN_TXPLL_DIV_1_TXPLL_AUXDIV(12'b000000011001), .PMA_CMN_TXPLL_DIV_1_TXPLL_FBDIV(12'b000000011001)
        , .PMA_CMN_TXPLL_DIV_2_TXPLL_FRAC(24'b000000000000000000000001)
        , .PMA_CMN_TXPLL_DIV_2_TXPLL_REFDIV(6'b000001), .PMA_CMN_TXPLL_JA_1_TXPLL_JA_DIVFIN(16'b0000000001100100)
        , .PMA_CMN_TXPLL_JA_1_TXPLL_JA_DIVFFB(16'b0000000001100100), .PMA_CMN_TXPLL_JA_2_TXPLL_JA_SYNCCNTMAX(32'b00000000000000000000000001100100)
        , .PMA_CMN_TXPLL_JA_3_TXPLL_JA_CNTOFFSET(16'b0000000001100100)
        , .PMA_CMN_TXPLL_JA_3_TXPLL_JA_TARGETCNT(32'b00000000000000000000000001100100)
        , .PMA_CMN_TXPLL_JA_4_TXPLL_JA_OTDLY(16'b0000000000000001), .PMA_CMN_TXPLL_JA_4_TXPLL_JA_FMI(8'b00000001)
        , .PMA_CMN_TXPLL_JA_4_TXPLL_JA_FKI(4'b0001), .PMA_CMN_TXPLL_JA_5_TXPLL_JA_PMP1(8'b00000001)
        , .PMA_CMN_TXPLL_JA_5_TXPLL_JA_PMP2(8'b00000001), .PMA_CMN_TXPLL_JA_5_TXPLL_JA_PMI1(8'b00000001)
        , .PMA_CMN_TXPLL_JA_5_TXPLL_JA_PMI2(8'b00000001), .PMA_CMN_TXPLL_JA_6_TXPLL_JA_PKP1(5'b00001)
        , .PMA_CMN_TXPLL_JA_6_TXPLL_JA_PKP2(5'b00001), .PMA_CMN_TXPLL_JA_6_TXPLL_JA_PKI1(5'b00001)
        , .PMA_CMN_TXPLL_JA_6_TXPLL_JA_PKI2(5'b00001), .PMA_CMN_TXPLL_JA_7_TXPLL_JA_DELAYK(24'b000000000000000000000001)
        , .PMA_CMN_TXPLL_JA_7_TXPLL_JA_FDONLY(1'b1), .PMA_CMN_TXPLL_JA_7_TXPLL_JA_ONTARGETOV(1'b1)
        , .PMA_CMN_TXPLL_JA_7_TXPLL_JA_PROGRAM(1'b1), .PMA_CMN_TXPLL_JA_8_TXPLL_JA_FRAC_PRESET(24'b000000000000000000000000)
        , .PMA_CMN_TXPLL_JA_8_TXPLL_JA_PRESET_EN(1'b0), .PMA_CMN_TXPLL_JA_8_TXPLL_JA_HOLD(1'b0)
        , .PMA_CMN_TXPLL_JA_9_TXPLL_JA_INT_PRESET(12'b000000010100), .PMA_CMN_TXPLL_JA_RST_TXPLL_JA_RESET(1'b1)
        , .PMA_CMN_TXPLL_JA_RST_TXPLL_JA_RESET_FFB_OVERRIDE(1'b0), .PMA_CMN_TXPLL_JA_RST_TXPLL_JA_RESET_FFB_EXT(1'b1)
        , .PMA_CMN_TXPLL_JA_RST_TXPLL_JA_RESET_FIN_OVERRIDE(1'b0), .PMA_CMN_TXPLL_JA_RST_TXPLL_JA_RESET_FIN_EXT(1'b1)
        , .PMA_CMN_TXPLL_JA_RST_TXPLL_JA_RESET_CLKS_OVERRIDE(1'b0), .PMA_CMN_TXPLL_JA_RST_TXPLL_JA_RESET_CLKS_EXT(1'b1)
        , .PMA_CMN_SERDES_SSMOD_SSMOD_DOWNSPREAD(1'b0), .PMA_CMN_SERDES_SSMOD_SSMOD_DISABLE_SSCG(1'b1)
        , .PMA_CMN_SERDES_SSMOD_SSMOD_SPREAD(5'b00000), .PMA_CMN_SERDES_SSMOD_SSMOD_DIVVAL(6'b000001)
        , .PMA_CMN_SERDES_SSMOD_SSMOD_EXT_MAXADDR(8'b01111111), .PMA_CMN_SERDES_SSMOD_SSMOD_SEL_EXTWAVE(2'b00)
        , .PMA_CMN_SERDES_SSMOD_RN_SEL(2'b00), .PMA_CMN_SERDES_SSMOD_RN_FILTER(1'b0)
        , .PMA_CMN_SERDES_RTERM_RTERMCAL85(4'b0011), .PMA_CMN_SERDES_RTERM_RTERMCAL100(4'b0111)
        , .PMA_CMN_SERDES_RTERM_RTERMCAL150(4'b1101), .PMA_CMN_SERDES_RTT_RTT_CAL_TERM(4'b0000)
        , .PMA_CMN_SERDES_RTT_RTT_CURRENT_PROG(2'b00), .PMA_SOFT_RESET_NV_MAP(1'b0)
        , .PMA_SOFT_RESET_V_MAP(1'b0), .PMA_DES_CDR_CTRL_1_DCFBEN_CDR(1'b0)
        , .PMA_DES_CDR_CTRL_1_H0CDR0(5'b00000), .PMA_DES_CDR_CTRL_1_H0CDR1(5'b00000)
        , .PMA_DES_CDR_CTRL_1_H0CDR2(8'b00000000), .PMA_DES_CDR_CTRL_1_H0CDR3(5'b00000)
        , .PMA_DES_CDR_CTRL_1_CMRTRIM_CDR(3'b000), .PMA_DES_CDR_CTRL_2_CSENT1_CDR(2'b01)
        , .PMA_DES_CDR_CTRL_2_CSENT2_CDR(2'b01), .PMA_DES_CDR_CTRL_2_CSENT3_CDR(2'b01)
        , .PMA_DES_CDR_CTRL_3_SLIP_DES_CDR(1'b0), .PMA_DES_CDR_CTRL_3_SLIP_DES_CDR_SEL(1'b0)
        , .PMA_DES_CDR_CTRL_3_SLIP_DES_CDR_EN(1'b1), .PMA_DES_DFEEM_CTRL_1_CSENT1_DFEEM(2'b01)
        , .PMA_DES_DFEEM_CTRL_1_CSENT2_DFEEM(2'b01), .PMA_DES_DFEEM_CTRL_1_CSENT3_DFEEM(2'b01)
        , .PMA_DES_DFEEM_CTRL_1_CMRTRIM_DFEEM(3'b000), .PMA_DES_DFEEM_CTRL_2_H1(5'b00000)
        , .PMA_DES_DFEEM_CTRL_2_H2(5'b00000), .PMA_DES_DFEEM_CTRL_2_H3(5'b00000)
        , .PMA_DES_DFEEM_CTRL_2_H4(5'b00000), .PMA_DES_DFEEM_CTRL_3_H5(5'b00000)
        , .PMA_DES_DFE_CTRL_1_DCFBEN_DFE(1'b0), .PMA_DES_DFE_CTRL_1_H0DFE0(5'b00000)
        , .PMA_DES_DFE_CTRL_1_H0DFE1(5'b00000), .PMA_DES_DFE_CTRL_2_PHICTRL_TH_DFE(8'b00000000)
        , .PMA_DES_DFE_CTRL_2_PHICTRL_GRAY_DFE(3'b000), .PMA_DES_DFE_CTRL_2_SLIP_DES_DFE(1'b0)
        , .PMA_DES_DFE_CTRL_2_SLIP_DES_DFE_SEL(1'b0), .PMA_DES_DFE_CTRL_2_SLIP_DES_DFE_EN(1'b1)
        , .PMA_DES_EM_CTRL_1_DCFBEN_EM(1'b0), .PMA_DES_EM_CTRL_1_H0EM0(5'b00000)
        , .PMA_DES_EM_CTRL_1_H0EM1(5'b00000), .PMA_DES_EM_CTRL_1_CALIBRATION_CLK_EN(1'b0)
        , .PMA_DES_EM_CTRL_2_PHICTRL_TH_EM(8'b00000000), .PMA_DES_EM_CTRL_2_PHICTRL_GRAY_EM(3'b000)
        , .PMA_DES_EM_CTRL_2_SLIP_DES_EM(1'b0), .PMA_DES_EM_CTRL_2_SLIP_DES_EM_SEL(1'b0)
        , .PMA_DES_EM_CTRL_2_SLIP_DES_EM_EN(1'b0), .PMA_DES_RTL_EM_RUN_EYEMONITOR_COMPARISON(1'b0)
        , .PMA_DES_RTL_EM_EYEMONITOR_SAMPLE_COUNT(12'b000001100100), .PMA_DES_RTL_LOCK_CTRL_LOCK_OVERRIDE_FROMFAB(1'b0)
        , .PMA_DES_TEST_BUS_RXATESTSEL(3'b000), .PMA_DES_TEST_BUS_RXDTESTEN(1'b0)
        , .PMA_DES_TEST_BUS_RXDTESTSEL(3'b000), .PMA_DES_CLK_CTRL_RXBYPASSEN(1'b0)
        , .PMA_DES_RSTPD_RXPD(1'b0), .PMA_DES_RSTPD_RESETDES(1'b0), .PMA_DES_RSTPD_PDDFE(1'b1)
        , .PMA_DES_RSTPD_PDEM(1'b1), .PMA_DES_RSTPD_RCVEN(1'b1), .PMA_DES_RSTPD_RESET_FIFO(1'b0)
        , .PMA_DES_RTL_ERR_CHK_READ_ERROR(1'b0), .PMA_DES_PCIE1_2_RXPLL_DIV_PCIE1_RXPLL_FBDIV(8'b00011001)
        , .PMA_DES_PCIE1_2_RXPLL_DIV_PCIE1_RXPLL_REFDIV(5'b00010), .PMA_DES_PCIE1_2_RXPLL_DIV_PCIE1_RXPLL_RANGE(2'b01)
        , .PMA_DES_PCIE1_2_RXPLL_DIV_PCIE2_RXPLL_FBDIV(8'b00110010), .PMA_DES_PCIE1_2_RXPLL_DIV_PCIE2_RXPLL_REFDIV(5'b00010)
        , .PMA_DES_PCIE1_2_RXPLL_DIV_PCIE2_RXPLL_RANGE(2'b00), .PMA_DES_SATA1_2_RXPLL_DIV_SATA1_RXPLL_FBDIV(8'b00011000)
        , .PMA_DES_SATA1_2_RXPLL_DIV_SATA1_RXPLL_REFDIV(5'b00100), .PMA_DES_SATA1_2_RXPLL_DIV_SATA1_RXPLL_RANGE(2'b10)
        , .PMA_DES_SATA1_2_RXPLL_DIV_SATA2_RXPLL_FBDIV(8'b00011000), .PMA_DES_SATA1_2_RXPLL_DIV_SATA2_RXPLL_REFDIV(5'b00010)
        , .PMA_DES_SATA1_2_RXPLL_DIV_SATA2_RXPLL_RANGE(2'b01), .PMA_DES_SATA3_RXPLL_DIV_SATA3_RXPLL_FBDIV(8'b00110000)
        , .PMA_DES_SATA3_RXPLL_DIV_SATA3_RXPLL_REFDIV(5'b00010), .PMA_DES_SATA3_RXPLL_DIV_SATA3_RXPLL_RANGE(2'b00)
        , .PMA_SER_CTRL_CMSTEP_VALUE(1'b0), .PMA_SER_CTRL_CMSTEP(1'b0)
        , .PMA_SER_CTRL_NLPBK_EN(1'b0), .PMA_SER_CTRL_HSLPBKEN(1'b0), .PMA_SER_CTRL_HSLPBK_SEL(3'b000)
        , .PMA_SER_RSTPD_RESETSEREN(1'b1), .PMA_SER_RSTPD_RESETSER(1'b0)
        , .PMA_SER_RSTPD_TXPD(1'b0), .PMA_SER_DRV_BYP_BYPASSSER(1'b0)
        , .PMA_SER_RXDET_CTRL_RXDETECT_COUNT_THRESHOLD(14'b00000010001010)
        , .PMA_SER_RXDET_CTRL_RX_DETECT_EN(1'b0), .PMA_SER_RXDET_CTRL_RXDETECT_START(1'b0)
        , .PMA_SER_STATIC_LSB_STATIC_PATTERN_LSB(20'b00000000000000000000)
        , .PMA_SER_STATIC_MSB_STATIC_PATTERN_MSB(20'b00000000000000000000)
        , .PMA_SER_TEST_BUS_TXATESTSEL(3'b000), .PMA_SER_TEST_BUS_DTESTEN_RTL(1'b0)
        , .PMA_SER_TEST_BUS_DTESTSEL_RTL(4'b0000), .PMA_SER_TEST_BUS_JTAG_TO_DTEST_SEL(3'b000)
        , .PMA_SER_TEST_BUS_PRBSERR_TO_DTEST_SEL(2'b00), .PMA_SER_TEST_BUS_RXPKDETOUT_TO_DTEST_SEL(3'b111)
        , .PMA_SER_DRV_CTRL_M0_TXDRVTRIM_FS_3P5DB_M0(6'b100011), .PMA_SER_DRV_CTRL_M0_TXDRVTRIM_FS_6P0DB_M0(6'b110100)
        , .PMA_SER_DRV_CTRL_M0_TXDRVTRIM_HS_0DB_M0(6'b011011), .PMA_SER_DRV_CTRL_M1_TXDRVTRIM_FS_3P5DB_M1(6'b100111)
        , .PMA_SER_DRV_CTRL_M1_TXDRVTRIM_FS_6P0DB_M1(6'b101100), .PMA_SER_DRV_CTRL_M1_TXDRVTRIM_HS_0DB_M1(6'b100011)
        , .PMA_SER_DRV_CTRL_M2_TXDRVTRIM_FS_3P5DB_M2(6'b011011), .PMA_SER_DRV_CTRL_M2_TXDRVTRIM_FS_6P0DB_M2(6'b011011)
        , .PMA_SER_DRV_CTRL_M2_TXDRVTRIM_HS_0DB_M2(6'b011011), .PMA_SER_DRV_CTRL_M3_TXDRVTRIM_FS_3P5DB_M3(6'b010100)
        , .PMA_SER_DRV_CTRL_M3_TXDRVTRIM_FS_6P0DB_M3(6'b011011), .PMA_SER_DRV_CTRL_M3_TXDRVTRIM_HS_0DB_M3(6'b011011)
        , .PMA_SER_DRV_CTRL_M4_TXDRVTRIM_FS_3P5DB_M4(6'b001010), .PMA_SER_DRV_CTRL_M4_TXDRVTRIM_FS_6P0DB_M4(6'b001100)
        , .PMA_SER_DRV_CTRL_M4_TXDRVTRIM_HS_0DB_M4(6'b100100), .PMA_SER_DRV_CTRL_M5_TXDRVTRIM_BEACON_3P5DB_0(6'b111000)
        , .PMA_SER_DRV_CTRL_M5_TXDRVTRIM_BEACON_3P5DB_1(6'b111011), .PMA_SER_DRV_CTRL_M5_TXDRVTRIM_BEACON_6P0DB_0(6'b111000)
        , .PMA_SER_DRV_CTRL_M5_TXDRVTRIM_BEACON_6P0DB_1(6'b011011), .PMA_SERDES_RTL_CTRL_RESET_RTL(1'b0)
        , .PMA_SERDES_RTL_CTRL_TX_PRBSMODE(3'b000), .PMA_SERDES_RTL_CTRL_TX_DATA_SELECT(3'b000)
        , .PMA_SERDES_RTL_CTRL_RX_DATA_SELECT(2'b00), .PMA_SERDES_RTL_CTRL_RX_FIFO_INPUT_SELECT_NEIGHBOR(1'b0)
        , .PMA_SERDES_RTL_CTRL_RX_EYEMONITOR_COMPARISON_DATA_SEL(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_0_DFE_CAL_CEN(1'b0), .PMA_DES_DFE_CAL_CTRL_0_DFE_CAL_RESET(1'b1)
        , .PMA_DES_DFE_CAL_CTRL_0_EN_FE_CAL(1'b0), .PMA_DES_DFE_CAL_CTRL_0_EN_DFE_CAL(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_0_EN_OFFSET_CAL(1'b0), .PMA_DES_DFE_CAL_CTRL_0_WAIT_PERIOD_GOOD_LOCK(3'b111)
        , .PMA_DES_DFE_CAL_CTRL_0_NUM_SAMPLES_CTLE_OFFSET_CAL(6'b010000)
        , .PMA_DES_DFE_CAL_CTRL_0_NUM_SAMPLES_GOOD_LOCK(8'b01100100), .PMA_DES_DFE_CAL_CTRL_1_BYPASS_DFECAL_USER(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_1_DFE_CAL_EM_ONLY(1'b0), .PMA_DES_DFE_CAL_CTRL_1_DFE_CAL_FORCEH(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_1_PHASE_DIRECTION_USER(1'b1), .PMA_DES_DFE_CAL_CTRL_1_DFE_CAL_CLKDIV(4'b0001)
        , .PMA_DES_DFE_CAL_CTRL_1_DFE_CAL_FREQUENCY(3'b000), .PMA_DES_DFE_CAL_CTRL_1_DFE_CAL_FORCE_CDR_COEFFS(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_1_DFE_CAL_NUM_COEFFS(3'b100), .PMA_DES_DFE_CAL_CTRL_1_MAX_DFE_CYCLES(5'b00011)
        , .PMA_DES_DFE_CAL_CTRL_1_MAX_AREA_CYCLES(2'b01), .PMA_DES_DFE_CAL_CTRL_2_SETALT_OFFSET_DFE0(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_2_SETALT_OFFSET_DFE1(1'b0), .PMA_DES_DFE_CAL_CTRL_2_SETALT_OFFSET_EM0(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_2_SETALT_OFFSET_EM1(1'b0), .PMA_DES_DFE_CAL_CTRL_2_SET_DFE_COEFFS_USER(1'b0)
        , .PMA_DES_DFE_CAL_CTRL_2_ERROR_THR_CHANNEL_ALIGN(12'b000010000000)
        , .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL0_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL1_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL2_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL3_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL4_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL5_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL6_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_CTLE_OFFSET_CAL7_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_AREA_COMPUTE_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_CHANNEL_ALIGN_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_CENTER_HORIZONTAL_EM_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_CENTER_HORIZONTAL_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_HORIZONTAL_EM_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_HORIZONTAL_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_VERTICAL_EM_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_VERTICAL_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_DFECAL_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_FE_CALIBRATION_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_FULL_CAL_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_GOOD_LOCK_USER(1'b0)
        , .PMA_DES_DFE_CAL_CMD_RUN_STEP_PHASE_DFE_USER(1'b0), .PMA_DES_DFE_CAL_CMD_RUN_STEP_PHASE_EM_USER(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_H0CDR(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_H0DFE(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_H0EM(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_H1(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_H2(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_H3(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_H4(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_H5(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_CALIBRATION_CLK_EN(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_CDRCTLE(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_CST1_DFEEM(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_CST2_DFEEM(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_CTLEEN_DFE(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_CTLEEN_EM(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_PHICTRL_DFE(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_PHICTRL_EM(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_RCVEN(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_RST1_DFEEM(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_RST2_DFEEM(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_RUN_EYEMONITOR_COMPARISON(1'b0)
        , .PMA_DES_DFE_CAL_BYPASS_SEL_SLIP_DES_EM(1'b0), .PMA_DES_DFE_CAL_BYPASS_SEL_LOCK_OVERRIDE(1'b0)
        , .PCSCMN_SOFT_RESET_NV_MAP(1'b0), .PCSCMN_SOFT_RESET_V_MAP(1'b0)
        , .PCSCMN_SOFT_RESET_PERIPH(1'b0), .PCSCMN_GSSCLK_CTRL_MCLK_GSSCLK_0_SEL(5'b01001)
        , .PCSCMN_GSSCLK_CTRL_MCLK_GSSCLK_1_SEL(5'b01100), .PCSCMN_GSSCLK_CTRL_MCLK_GSSCLK_2_SEL(5'b00000)
        , .PCSCMN_QRST_R0_QRST0_LANE(2'b00), .PCSCMN_QRST_R0_QRST0_RST_SEL(4'b0000)
        , .PCSCMN_QRST_R0_QRST1_LANE(2'b00), .PCSCMN_QRST_R0_QRST1_RST_SEL(4'b0000)
        , .PCSCMN_QDBG_R0_PCS_DBG_MODE(3'b000), .PCSCMN_QDBG_R0_PCS_DBG_LANE_X(2'b00)
        , .PCSCMN_QDBG_R0_PCS_DBG_LANE_Y(2'b01), .PCS_SOFT_RESET_NV_MAP(1'b0)
        , .PCS_SOFT_RESET_V_MAP(1'b0), .PCS_LFWF_R0_RXFWF_WMARK(1'b0)
        , .PCS_LFWF_R0_TXFWF_WMARK(1'b0), .PCS_LPIP_R0_PIPE_SHAREDPLL(1'b1)
        , .PCS_LPIP_R0_PIPE_INITIALIZATION_DONE(1'b1), .PCS_LPIP_R0_PIPE_OOB_IDLEBURST_TIMING(2'b10)
        , .PCS_L64_R0_L64_CFG_BER_1US_TIMER_VAL(11'b00000000000), .PCS_L64_R1_L64_BYPASS_TEST(1'b1)
        , .PCS_L64_R1_L64_CFG_TEST_PATTERN_EN(1'b0), .PCS_L64_R1_L64_CFG_TEST_PATT_TYPE_SEL(1'b0)
        , .PCS_L64_R1_L64_CFG_TEST_PRBS31_EN(1'b0), .PCS_L64_R1_L64_CFG_TEST_PATT_DATA_SEL(1'b0)
        , .PCS_L64_R2_L64_SEED_A_VALUE_LO32(32'b00000000000000000000000000000000)
        , .PCS_L64_R3_L64_SEED_A_VALUE_HI26(26'b00000000000000000000000000)
        , .PCS_L64_R4_L64_SEED_B_VALUE_LO32(32'b00000000000000000000000000000000)
        , .PCS_L64_R5_L64_SEED_B_VALUE_HI26(26'b00000000000000000000000000)
        , .PCS_L64_R6_L64_TX_ADV_CYC_DLY(5'b00000), .PCS_L64_R6_L64_TX_ADD_UI(16'b0000000000000000)
        , .PCS_L64_R7_L64_RX_ADV_CYC_DLY(5'b00000), .PCS_L64_R7_L64_RX_ADD_UI(16'b0000000000000000)
        , .PCS_L8_R0_L8_TXENCSWAPSEL(1'b0), .PCS_LRST_R0_LRST_SOFT_PCS_RX_RESET(1'b0)
        , .PCS_LRST_R0_LRST_SOFT_PCS_RX_DIV2_RESET(1'b0), .PCS_LRST_R0_LRST_ULCKD_CDR_RESETS_PCS_RX(1'b1)
        , .PCS_LRST_R0_LRST_SOFT_RXFWF_RESET(1'b0), .PCS_LRST_R0_LRST_SOFT_PCS_TX_RESET(1'b0)
        , .PCS_LRST_R0_LRST_SOFT_PCS_TX_DIV2_RESET(1'b0), .PCS_LRST_R0_LRST_ULCKD_PLL_RESETS_PCS_TX(1'b1)
        , .PCS_LRST_R0_LRST_SOFT_TXFWF_RESET(1'b0), .PCS_LRST_R0_LRST_SOFT_PIPE_RESET(7'b0000000)
        , .PCS_LRST_OPT_LRST_DISABLE_FAB_PCS_RESET_FOR_RX(1'b0), .PCS_LRST_OPT_LRST_DISABLE_FAB_PCS_RESET_FOR_TX(1'b1)
        , .PCS_OOB_R0_OOB_BURST_MIN_CYCLE(8'b00001111), .PCS_OOB_R0_OOB_BURST_MAX_CYCLE(8'b00010001)
        , .PCS_OOB_R0_OOB_WAKE_MIN_CYCLE(8'b00001111), .PCS_OOB_R0_OOB_WAKE_MAX_CYCLE(8'b00010001)
        , .PCS_OOB_R1_OOB_RST_INIT_MIN_CYCLE(8'b00101101), .PCS_OOB_R1_OOB_RST_INIT_MAX_CYCLE(8'b00110011)
        , .PCS_OOB_R1_OOB_SAS_MIN_CYCLE(8'b10001000), .PCS_OOB_R1_OOB_SAS_MAX_CYCLE(8'b10011000)
        , .PCS_OOB_R2_TXOOB_PROG_DATA_L32B(32'b00000000000000000000000000000000)
        , .PCS_OOB_R3_TXOOB_PROG_DATA_H8B(8'b00000000), .PCS_PMA_CTRL_R0_PMA_P2_ENTER_INT_MASK(1'b1)
        , .PCS_PMA_CTRL_R0_PMA_P2_EXIT_INT_MASK(1'b1), .PCS_PMA_CTRL_R0_PMA_P2_ENTER_INT(1'b0)
        , .PCS_PMA_CTRL_R0_PMA_P2_EXIT_INT(1'b0), .PCS_PMA_CTRL_R0_PMA_RXPLL_LOCK_INT_MASK(1'b1)
        , .PCS_PMA_CTRL_R0_PMA_RXPLL_UNLOCK_INT_MASK(1'b1), .PCS_PMA_CTRL_R0_PMA_RXPLL_LOCK_INT(1'b0)
        , .PCS_PMA_CTRL_R0_PMA_RXPLL_UNLOCK_INT(1'b0), .PCS_PMA_CTRL_R0_PMA_RXPLL_FLOCK_SEL(1'b0)
        , .PCS_PMA_CTRL_R0_PMA_TXPLL_LOCK_INT_MASK(1'b1), .PCS_PMA_CTRL_R0_PMA_TXPLL_UNLOCK_INT_MASK(1'b1)
        , .PCS_PMA_CTRL_R0_PMA_TXPLL_LOCK_INT(1'b0), .PCS_PMA_CTRL_R0_PMA_TXPLL_UNLOCK_INT(1'b0)
        , .PCS_PMA_CTRL_R1_RXBEACON_MAX_PULSE_WIDTH(11'b11001000000), .PCS_PMA_CTRL_R1_TXBEACON_PULSE_WIDTH(12'b000000001010)
        , .PCS_PMA_CTRL_R2_PD_PLL_CNT(8'b10100110), .PCS_PMA_CTRL_R2_PIPE_RATE_INIT(2'b00)
        , .PCS_PMA_CTRL_R2_FAB_DRIVES_TXPADS(1'b0), .PCS_MSTR_CTRL_LANE_MSTR(2'b00)
        , .MAIN_SOFT_RESET_PERIPH(1'b0), .MAIN_SOFT_RESET_NV_MAP(1'b0)
        , .MAIN_SOFT_RESET_V_MAP(1'b0), .PMA_SOFT_RESET_PERIPH(1'b0), .PMA_DES_CDR_CTRL_3_CST1_CDR(2'b00)
        , .PMA_DES_CDR_CTRL_3_CST2_CDR(2'b00), .PMA_DES_CDR_CTRL_3_RST1_CDR(2'b00)
        , .PMA_DES_CDR_CTRL_3_RST2_CDR(2'b00), .PMA_DES_CDR_CTRL_3_RXDRV_CDR(2'b00)
        , .PMA_DES_DFEEM_CTRL_3_CST1_DFEEM(2'b00), .PMA_DES_DFEEM_CTRL_3_CST2_DFEEM(2'b00)
        , .PMA_DES_DFEEM_CTRL_3_RST1_DFEEM(2'b00), .PMA_DES_DFEEM_CTRL_3_RST2_DFEEM(2'b00)
        , .PMA_DES_DFE_CTRL_2_RXDRV_DFE(2'b00), .PMA_DES_DFE_CTRL_2_CTLEEN_DFE(1'b0)
        , .PMA_DES_EM_CTRL_2_RXDRV_EM(2'b00), .PMA_DES_EM_CTRL_2_CTLEEN_EM(1'b0)
        , .PMA_DES_IN_TERM_RXRTRIM(4'b0111), .PMA_DES_IN_TERM_RXTEN(1'b0)
        , .PMA_DES_IN_TERM_RXRTRIM_SEL(2'b01), .PMA_DES_IN_TERM_ACCOUPLE_RXVCM_EN(1'b1)
        , .PMA_DES_PKDET_RXPKDETEN(1'b1), .PMA_DES_PKDET_RXPKDETRANGE(1'b0)
        , .PMA_DES_PKDET_RXPKDET_LOW_THRESHOLD(3'b011), .PMA_DES_PKDET_RXPKDET_HIGH_THRESHOLD(3'b101)
        , .PMA_DES_RTL_LOCK_CTRL_LOCK_MODE(1'b0), .PMA_DES_RTL_LOCK_CTRL_LOCK_OVERRIDE(2'b00)
        , .PMA_DES_RTL_LOCK_CTRL_FDET_SAMPLE_PERIODS(5'b00001), .PMA_DES_RXPLL_DIV_RXPLL_FBDIV(8'b00100000)
        , .PMA_DES_RXPLL_DIV_RXPLL_REFDIV(5'b00010), .PMA_DES_RXPLL_DIV_RXPLL_RANGE(2'b00)
        , .PMA_DES_RXPLL_DIV_CDR_GAIN(1'b0), .PMA_DES_TEST_BUS_RXATESTEN(1'b0)
        , .PMA_DES_CLK_CTRL_RXREFCLK_SEL(3'b100), .PMA_DES_CLK_CTRL_DESMODE(3'b111)
        , .PMA_DES_CLK_CTRL_DATALOCKEN(1'b0), .PMA_DES_CLK_CTRL_DATALOCKDIVEN(1'b0)
        , .PMA_SER_CTRL_TXVBGREF_SEL(1'b0), .PMA_SER_CLK_CTRL_TXPOSTDIVEN(1'b0)
        , .PMA_SER_CLK_CTRL_TXPOSTDIV(2'b00), .PMA_SER_CLK_CTRL_TXBITCLKSEL(1'b0)
        , .PMA_SER_CLK_CTRL_SERMODE(3'b111), .PMA_SER_DRV_BYP_BYPASS_VALUE(8'b00000000)
        , .PMA_SER_DRV_BYP_TX_BYPASS_SELECT_RTL(2'b00), .PMA_SER_DRV_BYP_TX_BYPASS_SELECT(1'b0)
        , .PMA_SER_RXDET_CTRL_RXDETECT_STEP_WAIT_COUNT(5'b10000), .PMA_SER_TERM_CTRL_TXCM_LEVEL(2'b00)
        , .PMA_SER_TERM_CTRL_TXTEN(1'b0), .PMA_SER_TERM_CTRL_TXRTRIM_SEL(2'b01)
        , .PMA_SER_TERM_CTRL_TXRTRIM(4'b0111), .PMA_SER_TEST_BUS_TXATESTEN(1'b0)
        , .PMA_SER_DRV_DATA_CTRL_TXDEL(16'b0000000000000000), .PMA_SER_DRV_DATA_CTRL_TXDATA_INV(8'b00000000)
        , .PMA_SER_DRV_CTRL_TXDRVTRIM(24'b000000000000000000000000), .PMA_SER_DRV_CTRL_TXDRV(3'b001)
        , .PMA_SER_DRV_CTRL_TXITRIM(2'b10), .PMA_SER_DRV_CTRL_TXODRV(2'b00)
        , .PMA_SER_DRV_CTRL_SEL_TXDRV_CTRL_SEL(1'b0), .PMA_SER_DRV_CTRL_SEL_TXODRV_BOOSTER(1'b0)
        , .PMA_SER_DRV_CTRL_SEL_TXMARGIN(3'b000), .PMA_SER_DRV_CTRL_SEL_TXSWING(1'b0)
        , .PMA_SER_DRV_CTRL_SEL_TXDEEMPHASIS(1'b0), .PMA_SER_DRV_CTRL_SEL_TXDEEMPHASIS_BEACON(1'b0)
        , .PMA_SERDES_RTL_CTRL_RX_HALF_RATE10BIT(1'b0), .PMA_SERDES_RTL_CTRL_TX_HALF_RATE10BIT(1'b0)
        , .PCS_SOFT_RESET_PERIPH(1'b0), .PCS_LFWF_R0_RXFWF_RATIO(2'b00)
        , .PCS_LFWF_R0_TXFWF_RATIO(2'b00), .PCS_LOVR_R0_FAB_IFC_MODE(4'b1000)
        , .PCS_LOVR_R0_PCSPMA_IFC_MODE(4'b1000), .PCS_LPIP_R0_PIPEENABLE(1'b0)
        , .PCS_LPIP_R0_PIPEMODE(1'b0), .PCS_LPIP_R0_PIPE_PCIE_HC(1'b0)
        , .PCS_L64_R0_L64_CFG_BYPASS_SCRAMBLER(1'b0), .PCS_L64_R0_L64_CFG_BYPASS_DISPARITY(1'b1)
        , .PCS_L64_R0_L64_CFG_BYPASS_GEARBOX(1'b0), .PCS_L64_R0_L64_CFG_GRBX_64B67B(1'b0)
        , .PCS_L64_R0_L64_CFG_BER_MON_EN(1'b1), .PCS_L64_R0_L64_CFG_BYPASS_8B_MODE(1'b0)
        , .PCS_L64_R0_L64_CFG_GRBX_SM_C49(1'b0), .PCS_L64_R0_L64_CFG_GRBX_SM_C82(1'b0)
        , .PCS_L8_R0_L8_GEARMODE(2'b00), .PCS_LNTV_R0_LNTV_RX_GEAR(1'b1)
        , .PCS_LNTV_R0_LNTV_RX_IN_WIDTH(3'b111), .PCS_LNTV_R0_LNTV_RX_MODE(1'b1)
        , .PCS_LNTV_R0_LNTV_TX_GEAR(1'b1), .PCS_LNTV_R0_LNTV_TX_OUT_WIDTH(3'b111)
        , .PCS_LNTV_R0_LNTV_TX_MODE(1'b1), .PCS_LCLK_R0_LCLK_EPCS_RX_CLK_SEL(2'b01)
        , .PCS_LCLK_R0_LCLK_EPCS_TX_CLK_SEL(2'b01), .PCS_LCLK_R0_LCLK_TXFWF_TMG_MODE(1'b0)
        , .PCS_LCLK_R0_LCLK_PCS_RX_CLK_SEL(2'b11), .PCS_LCLK_R0_LCLK_PCS_TX_CLK_SEL(2'b11)
        , .PCS_LCLK_R0_LCLK_RXFWF_WCLK_SEL(2'b10), .PCS_LCLK_R0_LCLK_TXFWF_RCLK_SEL(2'b10)
        , .PCS_LCLK_R0_LCLK_RXFWF_WCLK_PIPE(1'b0), .PCS_LCLK_R1_LCLK_ENA_64B6XB_RX_CLK(1'b0)
        , .PCS_LCLK_R1_LCLK_ENA_64B6XB_RX_CLK_DIV2(1'b0), .PCS_LCLK_R1_LCLK_ENA_64B6XB_TX_CLK(1'b0)
        , .PCS_LCLK_R1_LCLK_ENA_64B6XB_TX_CLK_DIV2(1'b0), .PCS_LCLK_R1_LCLK_ENA_8B10B_RX_CLK(1'b0)
        , .PCS_LCLK_R1_LCLK_ENA_8B10B_RXFWF_WCLK(1'b0), .PCS_LCLK_R1_LCLK_ENA_8B10B_TX_CLK(1'b0)
        , .PCS_LCLK_R1_LCLK_ENA_8B10B_TXFWF_RCLK(1'b0), .PCS_LCLK_R1_LCLK_ENA_NATIVE_RX_CLK(1'b1)
        , .PCS_LCLK_R1_LCLK_ENA_NATIVE_RXFWF_WCLK(1'b1), .PCS_LCLK_R1_LCLK_ENA_NATIVE_TX_CLK(1'b1)
        , .PCS_LCLK_R1_LCLK_ENA_NATIVE_TXFWF_RCLK(1'b1), .PCS_LCLK_R1_LCLK_ENA_PIPE_LCL(1'b0)
        , .PCS_LCLK_R1_LCLK_ENA_PIPE_OUT(1'b0), .PCS_PMA_CTRL_R0_PIPE_P0S_EN(1'b1)
        , .PCS_PMA_CTRL_R0_PIPE_P1_EN(1'b1), .PCS_PMA_CTRL_R0_PIPE_P2_EN(1'b1)
        , .PCS_PMA_CTRL_R0_FLASH_FREEZE_P0S_EN(1'b0), .PCS_PMA_CTRL_R0_FLASH_FREEZE_P1_EN(1'b0)
        , .PCS_PMA_CTRL_R0_FLASH_FREEZE_P2_EN(1'b0), .PCS_PMA_CTRL_R0_FAB_EPCS_PMA_RESET_B_EN(1'b1)
         )  LANE0 (.TX_CLK_STABLE(LANE0_TX_CLK_STABLE), .RX_VAL(
        LANE0_RX_VAL), .RX_READY(LANE0_RX_READY), .RX_IDLE(
        LANE0_RX_IDLE), .RX_DATA({LANE0_RX_DATA[79], LANE0_RX_DATA[78], 
        LANE0_RX_DATA[77], LANE0_RX_DATA[76], LANE0_RX_DATA[75], 
        LANE0_RX_DATA[74], LANE0_RX_DATA[73], LANE0_RX_DATA[72], 
        LANE0_RX_DATA[71], LANE0_RX_DATA[70], LANE0_RX_DATA[69], 
        LANE0_RX_DATA[68], LANE0_RX_DATA[67], LANE0_RX_DATA[66], 
        LANE0_RX_DATA[65], LANE0_RX_DATA[64], LANE0_RX_DATA[63], 
        LANE0_RX_DATA[62], LANE0_RX_DATA[61], LANE0_RX_DATA[60], 
        LANE0_RX_DATA[59], LANE0_RX_DATA[58], LANE0_RX_DATA[57], 
        LANE0_RX_DATA[56], LANE0_RX_DATA[55], LANE0_RX_DATA[54], 
        LANE0_RX_DATA[53], LANE0_RX_DATA[52], LANE0_RX_DATA[51], 
        LANE0_RX_DATA[50], LANE0_RX_DATA[49], LANE0_RX_DATA[48], 
        LANE0_RX_DATA[47], LANE0_RX_DATA[46], LANE0_RX_DATA[45], 
        LANE0_RX_DATA[44], LANE0_RX_DATA[43], LANE0_RX_DATA[42], 
        LANE0_RX_DATA[41], LANE0_RX_DATA[40], LANE0_RX_DATA[39], 
        LANE0_RX_DATA[38], LANE0_RX_DATA[37], LANE0_RX_DATA[36], 
        LANE0_RX_DATA[35], LANE0_RX_DATA[34], LANE0_RX_DATA[33], 
        LANE0_RX_DATA[32], LANE0_RX_DATA[31], LANE0_RX_DATA[30], 
        LANE0_RX_DATA[29], LANE0_RX_DATA[28], LANE0_RX_DATA[27], 
        LANE0_RX_DATA[26], LANE0_RX_DATA[25], LANE0_RX_DATA[24], 
        LANE0_RX_DATA[23], LANE0_RX_DATA[22], LANE0_RX_DATA[21], 
        LANE0_RX_DATA[20], LANE0_RX_DATA[19], LANE0_RX_DATA[18], 
        LANE0_RX_DATA[17], LANE0_RX_DATA[16], LANE0_RX_DATA[15], 
        LANE0_RX_DATA[14], LANE0_RX_DATA[13], LANE0_RX_DATA[12], 
        LANE0_RX_DATA[11], LANE0_RX_DATA[10], LANE0_RX_DATA[9], 
        LANE0_RX_DATA[8], LANE0_RX_DATA[7], LANE0_RX_DATA[6], 
        LANE0_RX_DATA[5], LANE0_RX_DATA[4], LANE0_RX_DATA[3], 
        LANE0_RX_DATA[2], LANE0_RX_DATA[1], LANE0_RX_DATA[0]}), 
        .RX_BYPASS_DATA(LANE0_RX_BYPASS_DATA), .RX_CLK_R(
        LANE0_rx_rclkint_input_net), .TX_CLK_R(
        LANE0_tx_rclkint_input_net), .RX_REF_CLK(gnd_net), .TX_DATA({
        LANE0_TX_DATA[79], LANE0_TX_DATA[78], LANE0_TX_DATA[77], 
        LANE0_TX_DATA[76], LANE0_TX_DATA[75], LANE0_TX_DATA[74], 
        LANE0_TX_DATA[73], LANE0_TX_DATA[72], LANE0_TX_DATA[71], 
        LANE0_TX_DATA[70], LANE0_TX_DATA[69], LANE0_TX_DATA[68], 
        LANE0_TX_DATA[67], LANE0_TX_DATA[66], LANE0_TX_DATA[65], 
        LANE0_TX_DATA[64], LANE0_TX_DATA[63], LANE0_TX_DATA[62], 
        LANE0_TX_DATA[61], LANE0_TX_DATA[60], LANE0_TX_DATA[59], 
        LANE0_TX_DATA[58], LANE0_TX_DATA[57], LANE0_TX_DATA[56], 
        LANE0_TX_DATA[55], LANE0_TX_DATA[54], LANE0_TX_DATA[53], 
        LANE0_TX_DATA[52], LANE0_TX_DATA[51], LANE0_TX_DATA[50], 
        LANE0_TX_DATA[49], LANE0_TX_DATA[48], LANE0_TX_DATA[47], 
        LANE0_TX_DATA[46], LANE0_TX_DATA[45], LANE0_TX_DATA[44], 
        LANE0_TX_DATA[43], LANE0_TX_DATA[42], LANE0_TX_DATA[41], 
        LANE0_TX_DATA[40], LANE0_TX_DATA[39], LANE0_TX_DATA[38], 
        LANE0_TX_DATA[37], LANE0_TX_DATA[36], LANE0_TX_DATA[35], 
        LANE0_TX_DATA[34], LANE0_TX_DATA[33], LANE0_TX_DATA[32], 
        LANE0_TX_DATA[31], LANE0_TX_DATA[30], LANE0_TX_DATA[29], 
        LANE0_TX_DATA[28], LANE0_TX_DATA[27], LANE0_TX_DATA[26], 
        LANE0_TX_DATA[25], LANE0_TX_DATA[24], LANE0_TX_DATA[23], 
        LANE0_TX_DATA[22], LANE0_TX_DATA[21], LANE0_TX_DATA[20], 
        LANE0_TX_DATA[19], LANE0_TX_DATA[18], LANE0_TX_DATA[17], 
        LANE0_TX_DATA[16], LANE0_TX_DATA[15], LANE0_TX_DATA[14], 
        LANE0_TX_DATA[13], LANE0_TX_DATA[12], LANE0_TX_DATA[11], 
        LANE0_TX_DATA[10], LANE0_TX_DATA[9], LANE0_TX_DATA[8], 
        LANE0_TX_DATA[7], LANE0_TX_DATA[6], LANE0_TX_DATA[5], 
        LANE0_TX_DATA[4], LANE0_TX_DATA[3], LANE0_TX_DATA[2], 
        LANE0_TX_DATA[1], LANE0_TX_DATA[0]}), .RX_FWF_EN(vcc_net), 
        .TX_FWF_EN(vcc_net), .RX_SLIP(LANE0_RX_SLIP), .LOCK_OVERRIDE({
        gnd_net, gnd_net}), .TX_BYPASS_DATA(gnd_net), .TX_ELEC_IDLE(
        gnd_net), .PCS_ARST_N(LANE0_PCS_ARST_N), .PMA_ARST_N(
        LANE0_PMA_ARST_N), .RX_FWF_CLK(LANE0_RX_CLK_R), .TX_FWF_CLK(
        LANE0_TX_CLK_R), .PCS_DEBUG({nc0, nc1, nc2, nc3, nc4, nc5, nc6, 
        nc7, nc8, nc9, nc10, nc11, nc12, nc13, nc14, nc15, nc16, nc17, 
        nc18, nc19}), .REF_CLK_N(gnd_net), .REF_CLK_P(
        LANE0_CDR_REF_CLK_0), .RX_N(LANE0_RXD_N), .RX_P(LANE0_RXD_P), 
        .TX_N(LANE0_TXD_N), .TX_P(LANE0_TXD_P), .JA_CLK(), 
        .TX_BIT_CLK_0(TX_BIT_CLK_0), .TX_BIT_CLK_1(gnd_net), 
        .TX_PLL_LOCK_0(TX_PLL_LOCK_0), .TX_PLL_LOCK_1(gnd_net), 
        .TX_PLL_REF_CLK_0(TX_PLL_REF_CLK_0), .TX_PLL_REF_CLK_1(gnd_net)
        , .TX_CLK_G(), .RX_CLK_G(), .PMA_DEBUG(), .ARST_N({nc20, nc21})
        , .DRI_CLK(gnd_net), .DRI_CTRL({gnd_net, gnd_net, gnd_net, 
        gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, 
        gnd_net}), .DRI_WDATA({gnd_net, gnd_net, gnd_net, gnd_net, 
        gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, 
        gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, 
        gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, 
        gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, gnd_net, 
        gnd_net}), .DRI_ARST_N(gnd_net), .DRI_RDATA({nc22, nc23, nc24, 
        nc25, nc26, nc27, nc28, nc29, nc30, nc31, nc32, nc33, nc34, 
        nc35, nc36, nc37, nc38, nc39, nc40, nc41, nc42, nc43, nc44, 
        nc45, nc46, nc47, nc48, nc49, nc50, nc51, nc52, nc53, nc54}), 
        .DRI_INTERRUPT(), .LINK_CLK(gnd_net), .LINK_ADDR({gnd_net, 
        gnd_net, gnd_net}), .LINK_EN(gnd_net), .LINK_ARST_N(gnd_net), 
        .LINK_WDATA({gnd_net, gnd_net, gnd_net, gnd_net}), .LINK_RDATA({
        nc55, nc56, nc57, nc58}));
    VCC vcc_inst (.Y(vcc_net));
    RCLKINT LANE0_RX_rclkint (.A(LANE0_rx_rclkint_input_net), .Y(
        LANE0_RX_CLK_R));
    GND gnd_inst (.Y(gnd_net));
    
endmodule
