
  `include "bp_be_defines.svh"

package bp_be_pkg;

  import bp_common_pkg::*;

  localparam sp_float_width_gp = 32;
  localparam sp_rec_width_gp   = 33;
  localparam sp_exp_width_gp   = 8;
  localparam sp_sig_width_gp   = 24;

  localparam dp_float_width_gp = 64;
  localparam dp_rec_width_gp   = 65;
  localparam dp_exp_width_gp   = 11;
  localparam dp_sig_width_gp   = 53;

  localparam [dp_float_width_gp-1:0] dp_canonical_nan = 64'h7ff80000_00000000;
  localparam [dp_float_width_gp-1:0] sp_canonical_nan = 64'hffffffff_7fc00000;

  localparam [dp_rec_width_gp-1:0] dp_rec_1_0 = 65'h0_80000000_00000000;
  localparam [dp_rec_width_gp-1:0] dp_rec_0_0 = 65'h0_00000000_00000000;
  localparam [dp_rec_width_gp-1:0] dp_rec_m0_0 = 65'h1_00000000_00000000;

  localparam [dp_rec_width_gp-1:0] dp_canonical_rec = 65'h0_e0080000_00000000;

  typedef enum logic
  {
    e_fp_sp    = 1'b0
    ,e_fp_full = 1'b1
  } bp_be_fp_tag_e;

  typedef struct packed
  {
    logic                       sign;
    logic [sp_exp_width_gp:0]   exp;
    logic [sp_sig_width_gp-2:0] fract;
  }  bp_hardfloat_rec_sp_s;

  typedef struct packed
  {
    logic                       sign;
    logic [dp_exp_width_gp:0]   exp;
    logic [dp_sig_width_gp-2:0] fract;
  }  bp_hardfloat_rec_dp_s;

  typedef struct packed
  {
    logic                       is_nan;
    logic                       is_inf;
    logic                       is_zero;
    logic                       sign;
    logic [dp_exp_width_gp+1:0] sexp;
    logic [dp_sig_width_gp+2:0] sig;
  }  bp_hardfloat_raw_dp_s;

  typedef struct packed
  {
    logic                       is_nan;
    logic                       is_inf;
    logic                       is_zero;
    logic                       sign;
    logic [sp_exp_width_gp+1:0] sexp;
    logic [sp_sig_width_gp+2:0] sig;
  }  bp_hardfloat_raw_sp_s;

  typedef struct packed
  {
    bp_be_fp_tag_e        tag;
    bp_hardfloat_rec_dp_s rec;
  }  bp_be_fp_reg_s;

  localparam dpath_width_gp = $bits(bp_be_fp_reg_s);

  `include "bp_be_ctl_pkgdef.svh"
  `include "bp_be_dcache_pkgdef.svh"

endpackage

