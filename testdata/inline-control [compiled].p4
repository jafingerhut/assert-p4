extern Y<> {
  <null> Y<>( bit<32> b);
  bit<32> get<>(); }
control d() {
  bit<32> tmp_0
  @name("cinst.inst") Y cinst_inst_0/cinst_inst(16)
  action act() {
    tmp_0/tmp = cinst_inst_0/cinst_inst.get();
    x = tmp_0/tmp; }
  table tbl_act() {
    actions = { act(); }
    const default_action = act(); }
  tbl_act.apply(); }
control dproto<>(out bit<32> x);
package top<>( dproto _d);
top main(d())
