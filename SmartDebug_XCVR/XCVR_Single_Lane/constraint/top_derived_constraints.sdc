# Microsemi Corp.
# Date: 2022-May-16 17:01:25
# This file was generated based on the following SDC source files:
#   Z:/Pramod/Github_Examples/SmartDebug_XCVR/XCVR_Single_Lane/component/work/PF_TX_PLL_0/PF_TX_PLL_0_0/PF_TX_PLL_0_PF_TX_PLL_0_0_PF_TX_PLL.sdc
#   Z:/Pramod/Github_Examples/SmartDebug_XCVR/XCVR_Single_Lane/component/work/SmartBert_Core_0/PF_XCVR_0/SmartBert_Core_0_PF_XCVR_0_PF_XCVR.sdc
#

create_clock -name {REF_CLK_PAD_P} -period 6.4 [ get_ports { REF_CLK_PAD_P } ]
create_clock -name {SmartBert_Core_0_0/PF_XCVR_0/LANE0/TX_CLK_R} -period 16 [ get_pins { SmartBert_Core_0_0/PF_XCVR_0/LANE0/TX_CLK_R } ]
create_clock -name {SmartBert_Core_0_0/PF_XCVR_0/LANE0/RX_CLK_R} -period 16 [ get_pins { SmartBert_Core_0_0/PF_XCVR_0/LANE0/RX_CLK_R } ]