???prompt PL/SQL Developer import file
prompt Created on 2016年9月27日 by DeadBlue
set feedback off
set define off
prompt Creating T_CDSQ_AQFZRSP...
create table T_CDSQ_AQFZRSP
(
  wid  VARCHAR2(50) not null,
  sqbh VARCHAR2(50) not null,
  sfty VARCHAR2(1) not null,
  shyj VARCHAR2(120),
  shr  VARCHAR2(40) not null,
  shsj VARCHAR2(40) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_AQFZRSP
  is '安全负责人审批';
comment on column T_CDSQ_AQFZRSP.wid
  is 'WID';
comment on column T_CDSQ_AQFZRSP.sqbh
  is '申请编号';
comment on column T_CDSQ_AQFZRSP.sfty
  is '是否同意';
comment on column T_CDSQ_AQFZRSP.shyj
  is '审核意见';
comment on column T_CDSQ_AQFZRSP.shr
  is '审核人';
comment on column T_CDSQ_AQFZRSP.shsj
  is '审核时间';
alter table T_CDSQ_AQFZRSP
  add constraint PK_T_CDSQ_AQFZRSP primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_BWCLDSP...
create table T_CDSQ_BWCLDSP
(
  wid  VARCHAR2(50) not null,
  sqbh VARCHAR2(50) not null,
  sfty VARCHAR2(1) not null,
  shyj VARCHAR2(120),
  shr  VARCHAR2(40) not null,
  shsj VARCHAR2(40) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column T_CDSQ_BWCLDSP.wid
  is 'WID';
comment on column T_CDSQ_BWCLDSP.sqbh
  is '申请编号';
comment on column T_CDSQ_BWCLDSP.sfty
  is '是否同意';
comment on column T_CDSQ_BWCLDSP.shyj
  is '审核意见';
comment on column T_CDSQ_BWCLDSP.shr
  is '审核人';
comment on column T_CDSQ_BWCLDSP.shsj
  is '审核时间';
alter table T_CDSQ_BWCLDSP
  add constraint PK_T_CDSQ_BWCLDSP primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_BWCSP...
create table T_CDSQ_BWCSP
(
  wid  VARCHAR2(50) not null,
  sqbh VARCHAR2(50) not null,
  sfty VARCHAR2(1) not null,
  shyj VARCHAR2(120),
  shr  VARCHAR2(40) not null,
  shsj VARCHAR2(40) not null,
  sfjp VARCHAR2(1) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_BWCSP
  is '保卫处审批';
comment on column T_CDSQ_BWCSP.wid
  is 'WID';
comment on column T_CDSQ_BWCSP.sqbh
  is '申请编号';
comment on column T_CDSQ_BWCSP.sfty
  is '是否同意';
comment on column T_CDSQ_BWCSP.shyj
  is '审核意见';
comment on column T_CDSQ_BWCSP.shr
  is '审核人';
comment on column T_CDSQ_BWCSP.shsj
  is '审核时间';
comment on column T_CDSQ_BWCSP.sfjp
  is '是否加批';
alter table T_CDSQ_BWCSP
  add constraint T_CDSQ_BWCSP primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_CDSQB...
create table T_CDSQ_CDSQB
(
  wid     VARCHAR2(50) not null,
  sqbh    VARCHAR2(50) not null,
  hdnr    VARCHAR2(300) not null,
  zrr     VARCHAR2(40) not null,
  sqdw    VARCHAR2(40) not null,
  lxfs    VARCHAR2(40) not null,
  hdrq    VARCHAR2(40) not null,
  hddd    VARCHAR2(100) not null,
  zymj    VARCHAR2(20) not null,
  zypsl   VARCHAR2(20) not null,
  zbsljcc VARCHAR2(100) not null,
  qtyq    VARCHAR2(600),
  hdlx    VARCHAR2(2) not null,
  sqsj    VARCHAR2(40) not null,
  sqrgh   VARCHAR2(20) not null,
  fdy     VARCHAR2(40),
  hdsj    VARCHAR2(40) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_CDSQB
  is '场地申请表';
comment on column T_CDSQ_CDSQB.wid
  is 'WID';
comment on column T_CDSQ_CDSQB.sqbh
  is '申请编号';
comment on column T_CDSQ_CDSQB.hdnr
  is '活动内容';
comment on column T_CDSQ_CDSQB.zrr
  is '责任人';
comment on column T_CDSQ_CDSQB.sqdw
  is '申请单位';
comment on column T_CDSQ_CDSQB.lxfs
  is '联系方式';
comment on column T_CDSQ_CDSQB.hdrq
  is '活动日期';
comment on column T_CDSQ_CDSQB.hddd
  is '活动地点';
comment on column T_CDSQ_CDSQB.zymj
  is '占用面积';
comment on column T_CDSQ_CDSQB.zypsl
  is '遮阳棚数量';
comment on column T_CDSQ_CDSQB.zbsljcc
  is '展板（横幅）数量及尺寸';
comment on column T_CDSQ_CDSQB.qtyq
  is '其他要求';
comment on column T_CDSQ_CDSQB.hdlx
  is '活动类型';
comment on column T_CDSQ_CDSQB.sqsj
  is '申请时间';
comment on column T_CDSQ_CDSQB.sqrgh
  is '申请人工号';
comment on column T_CDSQ_CDSQB.fdy
  is '辅导员';
comment on column T_CDSQ_CDSQB.hdsj
  is '活动时间';
alter table T_CDSQ_CDSQB
  add constraint PK_T_CDSQ_CDSQB primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_CDXX...
create table T_CDSQ_CDXX
(
  wid  VARCHAR2(50) not null,
  cdmc VARCHAR2(50) not null,
  mjxx VARCHAR2(50) not null,
  sfkf VARCHAR2(1) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_CDXX
  is '场地信息';
comment on column T_CDSQ_CDXX.wid
  is 'WID';
comment on column T_CDSQ_CDXX.cdmc
  is '场地名称';
comment on column T_CDSQ_CDXX.mjxx
  is '面积信息';
comment on column T_CDSQ_CDXX.sfkf
  is '是否开放';
alter table T_CDSQ_CDXX
  add constraint T_CDSQ_CDXX primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_FDYXX...
create table T_CDSQ_FDYXX
(
  wid   VARCHAR2(50) not null,
  xh    VARCHAR2(50),
  fdygh VARCHAR2(50),
  fdyxm VARCHAR2(30)
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column T_CDSQ_FDYXX.wid
  is 'WID';
comment on column T_CDSQ_FDYXX.xh
  is '学号';
comment on column T_CDSQ_FDYXX.fdygh
  is '辅导员工号';
comment on column T_CDSQ_FDYXX.fdyxm
  is '辅导员姓名';
alter table T_CDSQ_FDYXX
  add constraint PK_CDSQ_FDYXX primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_SPZT...
create table T_CDSQ_SPZT
(
  wid  VARCHAR2(50) not null,
  sqbh VARCHAR2(50) not null,
  dqzt VARCHAR2(2) not null,
  sfth VARCHAR2(3),
  sfbl VARCHAR2(3) not null,
  sbwz VARCHAR2(2)
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_SPZT
  is '审批状态';
comment on column T_CDSQ_SPZT.wid
  is 'WID';
comment on column T_CDSQ_SPZT.sqbh
  is '申请编号';
comment on column T_CDSQ_SPZT.dqzt
  is '当前位置';
comment on column T_CDSQ_SPZT.sfth
  is '是否退回';
comment on column T_CDSQ_SPZT.sfbl
  is '是否办理';
comment on column T_CDSQ_SPZT.sbwz
  is '失败位置';
alter table T_CDSQ_SPZT
  add constraint T_CDSQ_SPZT primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_STZDLSSP...
create table T_CDSQ_STZDLSSP
(
  wid  VARCHAR2(50) not null,
  sqbh VARCHAR2(50) not null,
  sfty VARCHAR2(1) not null,
  shyj VARCHAR2(120),
  shr  VARCHAR2(40) not null,
  shsj VARCHAR2(40) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_STZDLSSP
  is '社团指导老师审批';
comment on column T_CDSQ_STZDLSSP.wid
  is 'WID';
comment on column T_CDSQ_STZDLSSP.sqbh
  is '申请编号';
comment on column T_CDSQ_STZDLSSP.sfty
  is '是否同意';
comment on column T_CDSQ_STZDLSSP.shyj
  is '审核意见';
comment on column T_CDSQ_STZDLSSP.shr
  is '审核人';
comment on column T_CDSQ_STZDLSSP.shsj
  is '审核时间';
alter table T_CDSQ_STZDLSSP
  add constraint PK_T_CDSQ_STZDLSSP primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_TWFZRSP...
create table T_CDSQ_TWFZRSP
(
  wid  VARCHAR2(50) not null,
  sqbh VARCHAR2(50) not null,
  sfty VARCHAR2(1) not null,
  shyj VARCHAR2(120),
  shr  VARCHAR2(40) not null,
  shsj VARCHAR2(40) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_TWFZRSP
  is '保卫处领导审批';
comment on column T_CDSQ_TWFZRSP.wid
  is 'WID';
comment on column T_CDSQ_TWFZRSP.sqbh
  is '申请编号';
comment on column T_CDSQ_TWFZRSP.sfty
  is '是否同意';
comment on column T_CDSQ_TWFZRSP.shyj
  is '审核意见';
comment on column T_CDSQ_TWFZRSP.shr
  is '审核人';
comment on column T_CDSQ_TWFZRSP.shsj
  is '审核时间';
alter table T_CDSQ_TWFZRSP
  add constraint PK_T_CDSQ_TWFZRSP primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_XGCLDSP...
create table T_CDSQ_XGCLDSP
(
  wid  VARCHAR2(50) not null,
  sqbh VARCHAR2(50) not null,
  sfty VARCHAR2(1) not null,
  shyj VARCHAR2(120),
  shr  VARCHAR2(40) not null,
  shsj VARCHAR2(40) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_XGCLDSP
  is '学工处领导审批';
comment on column T_CDSQ_XGCLDSP.wid
  is 'WID';
comment on column T_CDSQ_XGCLDSP.sqbh
  is '申请编号';
comment on column T_CDSQ_XGCLDSP.sfty
  is '是否同意';
comment on column T_CDSQ_XGCLDSP.shyj
  is '审核意见';
comment on column T_CDSQ_XGCLDSP.shr
  is '审核人';
comment on column T_CDSQ_XGCLDSP.shsj
  is '审核时间';
alter table T_CDSQ_XGCLDSP
  add constraint PK_T_CDSQ_XGCLDSP primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_CDSQ_YHXX...
create table T_CDSQ_YHXX
(
  wid   VARCHAR2(50) not null,
  zgh   VARCHAR2(50) not null,
  xm    VARCHAR2(20) not null,
  szdwd VARCHAR2(40) not null,
  sjh   VARCHAR2(20) not null
)
tablespace TS_CROWD_D
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CDSQ_YHXX
  is '用户信息';
comment on column T_CDSQ_YHXX.wid
  is 'WID';
comment on column T_CDSQ_YHXX.zgh
  is '职工号';
comment on column T_CDSQ_YHXX.xm
  is '姓名';
comment on column T_CDSQ_YHXX.szdwd
  is '单位';
comment on column T_CDSQ_YHXX.sjh
  is '手机号';
alter table T_CDSQ_YHXX
  add constraint PK_T_CDSQ_YHXX primary key (WID)
  using index 
  tablespace TS_CROWD_D
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for T_CDSQ_AQFZRSP...
alter table T_CDSQ_AQFZRSP disable all triggers;
prompt Disabling triggers for T_CDSQ_BWCLDSP...
alter table T_CDSQ_BWCLDSP disable all triggers;
prompt Disabling triggers for T_CDSQ_BWCSP...
alter table T_CDSQ_BWCSP disable all triggers;
prompt Disabling triggers for T_CDSQ_CDSQB...
alter table T_CDSQ_CDSQB disable all triggers;
prompt Disabling triggers for T_CDSQ_CDXX...
alter table T_CDSQ_CDXX disable all triggers;
prompt Disabling triggers for T_CDSQ_FDYXX...
alter table T_CDSQ_FDYXX disable all triggers;
prompt Disabling triggers for T_CDSQ_SPZT...
alter table T_CDSQ_SPZT disable all triggers;
prompt Disabling triggers for T_CDSQ_STZDLSSP...
alter table T_CDSQ_STZDLSSP disable all triggers;
prompt Disabling triggers for T_CDSQ_TWFZRSP...
alter table T_CDSQ_TWFZRSP disable all triggers;
prompt Disabling triggers for T_CDSQ_XGCLDSP...
alter table T_CDSQ_XGCLDSP disable all triggers;
prompt Disabling triggers for T_CDSQ_YHXX...
alter table T_CDSQ_YHXX disable all triggers;
prompt Deleting T_CDSQ_YHXX...
delete from T_CDSQ_YHXX;
commit;
prompt Deleting T_CDSQ_XGCLDSP...
delete from T_CDSQ_XGCLDSP;
commit;
prompt Deleting T_CDSQ_TWFZRSP...
delete from T_CDSQ_TWFZRSP;
commit;
prompt Deleting T_CDSQ_STZDLSSP...
delete from T_CDSQ_STZDLSSP;
commit;
prompt Deleting T_CDSQ_SPZT...
delete from T_CDSQ_SPZT;
commit;
prompt Deleting T_CDSQ_FDYXX...
delete from T_CDSQ_FDYXX;
commit;
prompt Deleting T_CDSQ_CDXX...
delete from T_CDSQ_CDXX;
commit;
prompt Deleting T_CDSQ_CDSQB...
delete from T_CDSQ_CDSQB;
commit;
prompt Deleting T_CDSQ_BWCSP...
delete from T_CDSQ_BWCSP;
commit;
prompt Deleting T_CDSQ_BWCLDSP...
delete from T_CDSQ_BWCLDSP;
commit;
prompt Deleting T_CDSQ_AQFZRSP...
delete from T_CDSQ_AQFZRSP;
commit;
prompt Enabling triggers for T_CDSQ_AQFZRSP...
alter table T_CDSQ_AQFZRSP enable all triggers;
prompt Enabling triggers for T_CDSQ_BWCLDSP...
alter table T_CDSQ_BWCLDSP enable all triggers;
prompt Enabling triggers for T_CDSQ_BWCSP...
alter table T_CDSQ_BWCSP enable all triggers;
prompt Enabling triggers for T_CDSQ_CDSQB...
alter table T_CDSQ_CDSQB enable all triggers;
prompt Enabling triggers for T_CDSQ_CDXX...
alter table T_CDSQ_CDXX enable all triggers;
prompt Enabling triggers for T_CDSQ_FDYXX...
alter table T_CDSQ_FDYXX enable all triggers;
prompt Enabling triggers for T_CDSQ_SPZT...
alter table T_CDSQ_SPZT enable all triggers;
prompt Enabling triggers for T_CDSQ_STZDLSSP...
alter table T_CDSQ_STZDLSSP enable all triggers;
prompt Enabling triggers for T_CDSQ_TWFZRSP...
alter table T_CDSQ_TWFZRSP enable all triggers;
prompt Enabling triggers for T_CDSQ_XGCLDSP...
alter table T_CDSQ_XGCLDSP enable all triggers;
prompt Enabling triggers for T_CDSQ_YHXX...
alter table T_CDSQ_YHXX enable all triggers;
set feedback on
set define on
prompt Done.
