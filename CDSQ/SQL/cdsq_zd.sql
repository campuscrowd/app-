
create table T_CDSQ_DQZT
(
  wid    VARCHAR2(40),
  dm     VARCHAR2(10),
  mc     VARCHAR2(180),
  px     NUMBER,
  sfsy   NUMBER,
  fbqk   NUMBER,
  ybzdm  VARCHAR2(10),
  qssyrq DATE,
  zzsyrq DATE,
  bzly   VARCHAR2(10),
  by2    VARCHAR2(90),
  czlx   VARCHAR2(10),
  by1    VARCHAR2(90),
  sjly   VARCHAR2(20),
  clrq   DATE
)
 ;
comment on table T_CDSQ_DQZT
  is '当前状态';
comment on column T_CDSQ_DQZT.wid
  is 'WID';
comment on column T_CDSQ_DQZT.dm
  is '代码';
comment on column T_CDSQ_DQZT.mc
  is '名称';
comment on column T_CDSQ_DQZT.px
  is '排序';
comment on column T_CDSQ_DQZT.sfsy
  is '是否使用';
comment on column T_CDSQ_DQZT.fbqk
  is '发布情况';
comment on column T_CDSQ_DQZT.ybzdm
  is '原标准代码';
comment on column T_CDSQ_DQZT.qssyrq
  is '起始使用日期';
comment on column T_CDSQ_DQZT.zzsyrq
  is '终止使用日期';
comment on column T_CDSQ_DQZT.bzly
  is '标准来源';
comment on column T_CDSQ_DQZT.by2
  is '备用2';
comment on column T_CDSQ_DQZT.czlx
  is '操作类型';
comment on column T_CDSQ_DQZT.by1
  is '备用1';
comment on column T_CDSQ_DQZT.sjly
  is '数据来源';
comment on column T_CDSQ_DQZT.clrq
  is '处理日期';


create table T_CDSQ_DW
(
  wid    VARCHAR2(40),
  dwdm   VARCHAR2(40) not null,
  dwjm   VARCHAR2(40),
  dwbzmc VARCHAR2(300),
  dwjc   VARCHAR2(60),
  dwywm  VARCHAR2(300),
  dwlxdm VARCHAR2(1),
  px     NUMBER,
  sfsy   VARCHAR2(1),
  tbrq   DATE,
  tblx   VARCHAR2(10),
  czrq   DATE,
  czz    VARCHAR2(30),
  czzxm  VARCHAR2(120)
)
 ;
comment on table T_CDSQ_DW
  is '单位';
comment on column T_CDSQ_DW.wid
  is 'WID';
comment on column T_CDSQ_DW.dwdm
  is '单位代码';
comment on column T_CDSQ_DW.dwjm
  is '单位简码';
comment on column T_CDSQ_DW.dwbzmc
  is '单位标准名称';
comment on column T_CDSQ_DW.dwjc
  is '单位简称';
comment on column T_CDSQ_DW.dwywm
  is '单位英文名';
comment on column T_CDSQ_DW.dwlxdm
  is '单位类型代码：0、；1、；2、；3、';
comment on column T_CDSQ_DW.px
  is '排序';
comment on column T_CDSQ_DW.sfsy
  is '是否使用';
comment on column T_CDSQ_DW.tbrq
  is '同步日期';
comment on column T_CDSQ_DW.tblx
  is '同步操作';
comment on column T_CDSQ_DW.czrq
  is '操作日期';
comment on column T_CDSQ_DW.czz
  is '操作者';
comment on column T_CDSQ_DW.czzxm
  is '操作者姓名';
alter table T_CDSQ_DW
  add constraint PK_T_CDSQ_DW_DWDM primary key (DWDM)
    ;


create table T_CDSQ_HDLX
(
  wid    VARCHAR2(40),
  dm     VARCHAR2(10),
  mc     VARCHAR2(180),
  px     NUMBER,
  sfsy   NUMBER,
  fbqk   NUMBER,
  ybzdm  VARCHAR2(10),
  qssyrq DATE,
  zzsyrq DATE,
  bzly   VARCHAR2(10),
  by2    VARCHAR2(90),
  czlx   VARCHAR2(10),
  by1    VARCHAR2(90),
  sjly   VARCHAR2(20),
  clrq   DATE
)
 ;
comment on table T_CDSQ_HDLX
  is '活动类型';
comment on column T_CDSQ_HDLX.wid
  is 'WID';
comment on column T_CDSQ_HDLX.dm
  is '代码';
comment on column T_CDSQ_HDLX.mc
  is '名称';
comment on column T_CDSQ_HDLX.px
  is '排序';
comment on column T_CDSQ_HDLX.sfsy
  is '是否使用';
comment on column T_CDSQ_HDLX.fbqk
  is '发布情况';
comment on column T_CDSQ_HDLX.ybzdm
  is '原标准代码';
comment on column T_CDSQ_HDLX.qssyrq
  is '起始使用日期';
comment on column T_CDSQ_HDLX.zzsyrq
  is '终止使用日期';
comment on column T_CDSQ_HDLX.bzly
  is '标准来源';
comment on column T_CDSQ_HDLX.by2
  is '备用2';
comment on column T_CDSQ_HDLX.czlx
  is '操作类型';
comment on column T_CDSQ_HDLX.by1
  is '备用1';
comment on column T_CDSQ_HDLX.sjly
  is '数据来源';
comment on column T_CDSQ_HDLX.clrq
  is '处理日期';


create table T_CDSQ_HDSJ
(
  wid    VARCHAR2(40),
  dm     VARCHAR2(10),
  mc     VARCHAR2(180),
  ywmc   VARCHAR2(180),
  cc     VARCHAR2(10),
  ls     VARCHAR2(10),
  px     NUMBER,
  sfsy   NUMBER,
  fbqk   NUMBER,
  ybzdm  VARCHAR2(10),
  qssyrq DATE,
  zzsyrq DATE,
  bzly   VARCHAR2(10),
  by1    VARCHAR2(300),
  by2    VARCHAR2(90),
  sjly   VARCHAR2(20),
  czlx   VARCHAR2(10),
  clrq   DATE
)
 ;
comment on table T_CDSQ_HDSJ
  is '具体时间';
comment on column T_CDSQ_HDSJ.wid
  is 'WID';
comment on column T_CDSQ_HDSJ.dm
  is '代码';
comment on column T_CDSQ_HDSJ.mc
  is '名称';
comment on column T_CDSQ_HDSJ.ywmc
  is '英文名称';
comment on column T_CDSQ_HDSJ.cc
  is '层次';
comment on column T_CDSQ_HDSJ.ls
  is '上级代码';
comment on column T_CDSQ_HDSJ.px
  is '排序';
comment on column T_CDSQ_HDSJ.sfsy
  is '是否使用';
comment on column T_CDSQ_HDSJ.fbqk
  is '发布情况';
comment on column T_CDSQ_HDSJ.ybzdm
  is '原标准代码';
comment on column T_CDSQ_HDSJ.qssyrq
  is '起始使用日期';
comment on column T_CDSQ_HDSJ.zzsyrq
  is '终止使用日期';
comment on column T_CDSQ_HDSJ.bzly
  is '标准来源';
comment on column T_CDSQ_HDSJ.by1
  is '备用1';
comment on column T_CDSQ_HDSJ.by2
  is '备用2';
comment on column T_CDSQ_HDSJ.sjly
  is '数据来源';
comment on column T_CDSQ_HDSJ.czlx
  is '操作类型';
comment on column T_CDSQ_HDSJ.clrq
  is '处理日期';


create table T_CDSQ_SBWZ
(
  wid    VARCHAR2(40),
  dm     VARCHAR2(10),
  mc     VARCHAR2(180),
  px     NUMBER,
  sfsy   NUMBER,
  fbqk   NUMBER,
  ybzdm  VARCHAR2(10),
  qssyrq DATE,
  zzsyrq DATE,
  bzly   VARCHAR2(10),
  by2    VARCHAR2(90),
  czlx   VARCHAR2(10),
  by1    VARCHAR2(90),
  sjly   VARCHAR2(20),
  clrq   DATE
)
 ;
comment on table T_CDSQ_SBWZ
  is '失败位置';
comment on column T_CDSQ_SBWZ.wid
  is 'WID';
comment on column T_CDSQ_SBWZ.dm
  is '代码';
comment on column T_CDSQ_SBWZ.mc
  is '名称';
comment on column T_CDSQ_SBWZ.px
  is '排序';
comment on column T_CDSQ_SBWZ.sfsy
  is '是否使用';
comment on column T_CDSQ_SBWZ.fbqk
  is '发布情况';
comment on column T_CDSQ_SBWZ.ybzdm
  is '原标准代码';
comment on column T_CDSQ_SBWZ.qssyrq
  is '起始使用日期';
comment on column T_CDSQ_SBWZ.zzsyrq
  is '终止使用日期';
comment on column T_CDSQ_SBWZ.bzly
  is '标准来源';
comment on column T_CDSQ_SBWZ.by2
  is '备用2';
comment on column T_CDSQ_SBWZ.czlx
  is '操作类型';
comment on column T_CDSQ_SBWZ.by1
  is '备用1';
comment on column T_CDSQ_SBWZ.sjly
  is '数据来源';
comment on column T_CDSQ_SBWZ.clrq
  is '处理日期';


create table T_CDSQ_SF
(
  wid    VARCHAR2(40),
  dm     VARCHAR2(10),
  mc     VARCHAR2(180),
  px     NUMBER,
  sfsy   NUMBER,
  fbqk   NUMBER,
  ybzdm  VARCHAR2(10),
  qssyrq DATE,
  zzsyrq DATE,
  bzly   VARCHAR2(10),
  by2    VARCHAR2(90),
  czlx   VARCHAR2(10),
  by1    VARCHAR2(90),
  sjly   VARCHAR2(20),
  clrq   DATE
)
 ;
comment on table T_CDSQ_SF
  is '意见';
comment on column T_CDSQ_SF.wid
  is 'WID';
comment on column T_CDSQ_SF.dm
  is '代码';
comment on column T_CDSQ_SF.mc
  is '名称';
comment on column T_CDSQ_SF.px
  is '排序';
comment on column T_CDSQ_SF.sfsy
  is '是否使用';
comment on column T_CDSQ_SF.fbqk
  is '发布情况';
comment on column T_CDSQ_SF.ybzdm
  is '原标准代码';
comment on column T_CDSQ_SF.qssyrq
  is '起始使用日期';
comment on column T_CDSQ_SF.zzsyrq
  is '终止使用日期';
comment on column T_CDSQ_SF.bzly
  is '标准来源';
comment on column T_CDSQ_SF.by2
  is '备用2';
comment on column T_CDSQ_SF.czlx
  is '操作类型';
comment on column T_CDSQ_SF.by1
  is '备用1';
comment on column T_CDSQ_SF.sjly
  is '数据来源';
comment on column T_CDSQ_SF.clrq
  is '处理日期';


create table T_CDSQ_YJ
(
  wid    VARCHAR2(40),
  dm     VARCHAR2(10),
  mc     VARCHAR2(180),
  px     NUMBER,
  sfsy   NUMBER,
  fbqk   NUMBER,
  ybzdm  VARCHAR2(10),
  qssyrq DATE,
  zzsyrq DATE,
  bzly   VARCHAR2(10),
  by2    VARCHAR2(90),
  czlx   VARCHAR2(10),
  by1    VARCHAR2(90),
  sjly   VARCHAR2(20),
  clrq   DATE
)
 ;
comment on table T_CDSQ_YJ
  is '意见';
comment on column T_CDSQ_YJ.wid
  is 'WID';
comment on column T_CDSQ_YJ.dm
  is '代码';
comment on column T_CDSQ_YJ.mc
  is '名称';
comment on column T_CDSQ_YJ.px
  is '排序';
comment on column T_CDSQ_YJ.sfsy
  is '是否使用';
comment on column T_CDSQ_YJ.fbqk
  is '发布情况';
comment on column T_CDSQ_YJ.ybzdm
  is '原标准代码';
comment on column T_CDSQ_YJ.qssyrq
  is '起始使用日期';
comment on column T_CDSQ_YJ.zzsyrq
  is '终止使用日期';
comment on column T_CDSQ_YJ.bzly
  is '标准来源';
comment on column T_CDSQ_YJ.by2
  is '备用2';
comment on column T_CDSQ_YJ.czlx
  is '操作类型';
comment on column T_CDSQ_YJ.by1
  is '备用1';
comment on column T_CDSQ_YJ.sjly
  is '数据来源';
comment on column T_CDSQ_YJ.clrq
  is '处理日期';


insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('1', '1', '填写申请表', 1, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('2', '2', '院系学工处领导审批中', 2, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('3', '3', '社团指导老师审批', 3, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('4', '4', '安全负责人审批中', 4, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('5', '5', '团委负责人审批中', 5, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('6', '6', '保卫处审批中', 6, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('7', '7', '保卫处领导审批中', 7, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('8', '8', '已完成', 8, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_DQZT (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('9', '9', '不同意', 9, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_DW (wid, dwdm, dwjm, dwbzmc, dwjc, dwywm, dwlxdm, px, sfsy, tbrq, tblx, czrq, czz, czzxm)
values ('4', '000034', '000034', '计算机科学与技术学院', '计算机', null, null, 4, '1', null, null, null, null, null);
insert into T_CDSQ_DW (wid, dwdm, dwjm, dwbzmc, dwjc, dwywm, dwlxdm, px, sfsy, tbrq, tblx, czrq, czz, czzxm)
values ('0', '000000', '000000', '无', '无', null, null, 0, '0', null, null, null, null, null);
insert into T_CDSQ_DW (wid, dwdm, dwjm, dwbzmc, dwjc, dwywm, dwlxdm, px, sfsy, tbrq, tblx, czrq, czz, czzxm)
values ('1', '101', '101', '单位1', '单位1', null, null, 1, '1', null, null, null, null, null);
insert into T_CDSQ_DW (wid, dwdm, dwjm, dwbzmc, dwjc, dwywm, dwlxdm, px, sfsy, tbrq, tblx, czrq, czz, czzxm)
values ('2', '102', '102', '单位2', '单位2', null, null, 2, '1', null, null, null, null, null);
insert into T_CDSQ_DW (wid, dwdm, dwjm, dwbzmc, dwjc, dwywm, dwlxdm, px, sfsy, tbrq, tblx, czrq, czz, czzxm)
values ('3', '103', '103', '单位3', '单位3', null, null, 3, '1', null, null, null, null, null);

insert into T_CDSQ_HDLX (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('1', '1', '学生社团/组织活动', 1, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDLX (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('0', '0', '其他学生活动', 0, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDLX (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('2', '2', '其他单位组织活动', 2, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('0', '0', '00：00', null, '1', null, 1, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('1', '1', '01：00', null, '1', null, 2, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('2', '2', '02：00', null, '1', null, 3, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('3', '3', '03：00', null, '1', null, 4, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('4', '4', '04：00', null, '1', null, 5, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('5', '5', '05：00', null, '1', null, 6, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('6', '6', '06：00', null, '1', null, 7, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('7', '7', '07：00', null, '1', null, 8, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('8', '8', '08：00', null, '1', null, 9, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('9', '9', '09：00', null, '1', null, 10, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('10', '10', '10：00', null, '1', null, 11, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('11', '11', '11：00', null, '1', null, 12, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('12', '12', '12：00', null, '1', null, 13, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('13', '13', '13：00', null, '1', null, 14, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('14', '14', '14：00', null, '1', null, 15, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('15', '15', '15：00', null, '1', null, 16, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('16', '16', '16：00', null, '1', null, 17, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('17', '17', '17：00', null, '1', null, 18, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('18', '18', '18：00', null, '1', null, 19, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('19', '19', '19：00', null, '1', null, 20, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('20', '20', '20：00', null, '1', null, 21, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('21', '21', '21：00', null, '1', null, 22, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('22', '22', '22：00', null, '1', null, 23, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('25', '25', '24：00', null, '2', '0', 26, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('26', '26', '23：00', null, '2', '0', 27, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('27', '27', '22：00', null, '2', '0', 28, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('28', '28', '21：00', null, '2', '0', 29, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('29', '29', '20：00', null, '2', '0', 30, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('30', '30', '19：00', null, '2', '0', 31, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('31', '31', '18：00', null, '2', '0', 32, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('32', '32', '17：00', null, '2', '0', 33, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('33', '33', '16：00', null, '2', '0', 34, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('34', '34', '15：00', null, '2', '0', 35, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('35', '35', '14：00', null, '2', '0', 36, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('36', '36', '13：00', null, '2', '0', 37, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('37', '37', '12：00', null, '2', '0', 38, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('38', '38', '11：00', null, '2', '0', 39, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('39', '39', '10：00', null, '2', '0', 40, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('40', '40', '09：00', null, '2', '0', 41, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('41', '41', '08：00', null, '2', '0', 42, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('42', '42', '07：00', null, '2', '0', 43, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('43', '43', '06：00', null, '2', '0', 44, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('44', '44', '05：00', null, '2', '0', 45, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('45', '45', '04：00', null, '2', '0', 46, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('46', '46', '03：00', null, '2', '0', 47, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('47', '47', '02：00', null, '2', '0', 48, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('48', '48', '01：00', null, '2', '0', 49, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('49', '49', '24：00', null, '2', '1', 50, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('50', '50', '23：00', null, '2', '1', 51, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('51', '51', '22：00', null, '2', '1', 52, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('52', '52', '21：00', null, '2', '1', 53, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('53', '53', '20：00', null, '2', '1', 54, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('54', '54', '19：00', null, '2', '1', 55, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('55', '55', '18：00', null, '2', '1', 56, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('56', '56', '17：00', null, '2', '1', 57, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('57', '57', '16：00', null, '2', '1', 58, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('58', '58', '15：00', null, '2', '1', 59, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('59', '59', '14：00', null, '2', '1', 60, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('60', '60', '13：00', null, '2', '1', 61, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('61', '61', '12：00', null, '2', '1', 62, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('62', '62', '11：00', null, '2', '1', 63, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('63', '63', '10：00', null, '2', '1', 64, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('64', '64', '09：00', null, '2', '1', 65, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('65', '65', '08：00', null, '2', '1', 66, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('66', '66', '07：00', null, '2', '1', 67, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('67', '67', '06：00', null, '2', '1', 68, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('68', '68', '05：00', null, '2', '1', 69, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('69', '69', '04：00', null, '2', '1', 70, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('70', '70', '03：00', null, '2', '1', 71, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('71', '71', '02：00', null, '2', '1', 72, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('72', '72', '24：00', null, '2', '2', 73, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('73', '73', '23：00', null, '2', '2', 74, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('74', '74', '22：00', null, '2', '2', 75, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('75', '75', '21：00', null, '2', '2', 76, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('76', '76', '20：00', null, '2', '2', 77, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('77', '77', '19：00', null, '2', '2', 78, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('78', '78', '18：00', null, '2', '2', 79, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('79', '79', '17：00', null, '2', '2', 80, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('80', '80', '16：00', null, '2', '2', 81, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('81', '81', '15：00', null, '2', '2', 82, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('82', '82', '14：00', null, '2', '2', 83, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('83', '83', '13：00', null, '2', '2', 84, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('84', '84', '12：00', null, '2', '2', 85, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('85', '85', '11：00', null, '2', '2', 86, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('86', '86', '10：00', null, '2', '2', 87, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('87', '87', '09：00', null, '2', '2', 88, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('88', '88', '08：00', null, '2', '2', 89, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('89', '89', '07：00', null, '2', '2', 90, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('90', '90', '06：00', null, '2', '2', 91, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('91', '91', '05：00', null, '2', '2', 92, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('92', '92', '04：00', null, '2', '2', 93, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('93', '93', '03：00', null, '2', '2', 94, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('94', '94', '24：00', null, '2', '3', 95, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('95', '95', '23：00', null, '2', '3', 96, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('96', '96', '22：00', null, '2', '3', 97, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('97', '97', '21：00', null, '2', '3', 98, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('98', '98', '20：00', null, '2', '3', 99, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('99', '99', '19：00', null, '2', '3', 100, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('100', '100', '18：00', null, '2', '3', 101, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('101', '101', '17：00', null, '2', '3', 102, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('102', '102', '16：00', null, '2', '3', 103, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('103', '103', '15：00', null, '2', '3', 104, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('104', '104', '14：00', null, '2', '3', 105, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('105', '105', '13：00', null, '2', '3', 106, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('106', '106', '12：00', null, '2', '3', 107, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('107', '107', '11：00', null, '2', '3', 108, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('108', '108', '10：00', null, '2', '3', 109, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('109', '109', '09：00', null, '2', '3', 110, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('110', '110', '08：00', null, '2', '3', 111, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('111', '111', '07：00', null, '2', '3', 112, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('112', '112', '06：00', null, '2', '3', 113, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('113', '113', '05：00', null, '2', '3', 114, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('114', '114', '04：00', null, '2', '3', 115, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('115', '115', '24：00', null, '2', '4', 116, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('116', '116', '23：00', null, '2', '4', 117, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('117', '117', '22：00', null, '2', '4', 118, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('118', '118', '21：00', null, '2', '4', 119, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('119', '119', '20：00', null, '2', '4', 120, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('120', '120', '19：00', null, '2', '4', 121, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('121', '121', '18：00', null, '2', '4', 122, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('122', '122', '17：00', null, '2', '4', 123, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('123', '123', '16：00', null, '2', '4', 124, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('124', '124', '15：00', null, '2', '4', 125, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('241', '241', '17：00', null, '2', '11', 242, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('242', '242', '16：00', null, '2', '11', 243, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('243', '243', '15：00', null, '2', '11', 244, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('244', '244', '14：00', null, '2', '11', 245, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('245', '245', '13：00', null, '2', '11', 246, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('246', '246', '12：00', null, '2', '11', 247, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('247', '247', '24：00', null, '2', '12', 248, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('248', '248', '23：00', null, '2', '12', 249, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('249', '249', '22：00', null, '2', '12', 250, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('250', '250', '21：00', null, '2', '12', 251, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('251', '251', '20：00', null, '2', '12', 252, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('252', '252', '19：00', null, '2', '12', 253, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('253', '253', '18：00', null, '2', '12', 254, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('254', '254', '17：00', null, '2', '12', 255, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('255', '255', '16：00', null, '2', '12', 256, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('256', '256', '15：00', null, '2', '12', 257, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('257', '257', '14：00', null, '2', '12', 258, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('258', '258', '13：00', null, '2', '12', 259, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('259', '259', '24：00', null, '2', '13', 260, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('260', '260', '23：00', null, '2', '13', 261, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('261', '261', '22：00', null, '2', '13', 262, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('262', '262', '21：00', null, '2', '13', 263, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('263', '263', '20：00', null, '2', '13', 264, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('264', '264', '19：00', null, '2', '13', 265, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('265', '265', '18：00', null, '2', '13', 266, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('266', '266', '17：00', null, '2', '13', 267, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('267', '267', '16：00', null, '2', '13', 268, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('268', '268', '15：00', null, '2', '13', 269, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('269', '269', '14：00', null, '2', '13', 270, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('270', '270', '24：00', null, '2', '14', 271, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('271', '271', '23：00', null, '2', '14', 272, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('272', '272', '22：00', null, '2', '14', 273, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('273', '273', '21：00', null, '2', '14', 274, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('274', '274', '20：00', null, '2', '14', 275, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('275', '275', '19：00', null, '2', '14', 276, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('276', '276', '18：00', null, '2', '14', 277, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('277', '277', '17：00', null, '2', '14', 278, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('278', '278', '16：00', null, '2', '14', 279, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('279', '279', '15：00', null, '2', '14', 280, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('280', '280', '24：00', null, '2', '15', 281, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('281', '281', '23：00', null, '2', '15', 282, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('282', '282', '22：00', null, '2', '15', 283, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('283', '283', '21：00', null, '2', '15', 284, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('284', '284', '20：00', null, '2', '15', 285, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('285', '285', '19：00', null, '2', '15', 286, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('286', '286', '18：00', null, '2', '15', 287, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('287', '287', '17：00', null, '2', '15', 288, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('288', '288', '16：00', null, '2', '15', 289, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('289', '289', '24：00', null, '2', '16', 290, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('290', '290', '23：00', null, '2', '16', 291, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('291', '291', '22：00', null, '2', '16', 292, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('292', '292', '21：00', null, '2', '16', 293, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('293', '293', '20：00', null, '2', '16', 294, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('294', '294', '19：00', null, '2', '16', 295, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('295', '295', '18：00', null, '2', '16', 296, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('296', '296', '17：00', null, '2', '16', 297, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('297', '297', '24：00', null, '2', '17', 298, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('298', '298', '23：00', null, '2', '17', 299, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('299', '299', '22：00', null, '2', '17', 300, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('300', '300', '21：00', null, '2', '17', 301, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('301', '301', '20：00', null, '2', '17', 302, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('302', '302', '19：00', null, '2', '17', 303, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('303', '303', '18：00', null, '2', '17', 304, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('304', '304', '24：00', null, '2', '18', 305, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('305', '305', '23：00', null, '2', '18', 306, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('306', '306', '22：00', null, '2', '18', 307, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('307', '307', '21：00', null, '2', '18', 308, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('308', '308', '20：00', null, '2', '18', 309, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('309', '309', '19：00', null, '2', '18', 310, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('310', '310', '24：00', null, '2', '19', 311, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('311', '311', '23：00', null, '2', '19', 312, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('312', '312', '22：00', null, '2', '19', 313, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('313', '313', '21：00', null, '2', '19', 314, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('314', '314', '20：00', null, '2', '19', 315, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('315', '315', '24：00', null, '2', '20', 316, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('316', '316', '23：00', null, '2', '20', 317, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('317', '317', '22：00', null, '2', '20', 318, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('318', '318', '21：00', null, '2', '20', 319, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('319', '319', '24：00', null, '2', '21', 320, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('320', '320', '23：00', null, '2', '21', 321, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('321', '321', '22：00', null, '2', '21', 322, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('322', '322', '24：00', null, '2', '22', 323, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('323', '323', '23：00', null, '2', '22', 324, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('324', '324', '24：00', null, '2', '23', 325, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('23', '23', '23：00', null, '1', null, 24, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('125', '125', '14：00', null, '2', '4', 126, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('126', '126', '13：00', null, '2', '4', 127, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('127', '127', '12：00', null, '2', '4', 128, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('128', '128', '11：00', null, '2', '4', 129, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('129', '129', '10：00', null, '2', '4', 130, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('130', '130', '09：00', null, '2', '4', 131, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('131', '131', '08：00', null, '2', '4', 132, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('132', '132', '07：00', null, '2', '4', 133, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('133', '133', '06：00', null, '2', '4', 134, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('134', '134', '05：00', null, '2', '4', 135, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('135', '135', '24：00', null, '2', '5', 136, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('136', '136', '23：00', null, '2', '5', 137, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('137', '137', '22：00', null, '2', '5', 138, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('138', '138', '21：00', null, '2', '5', 139, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('139', '139', '20：00', null, '2', '5', 140, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('140', '140', '19：00', null, '2', '5', 141, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('141', '141', '18：00', null, '2', '5', 142, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('142', '142', '17：00', null, '2', '5', 143, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('143', '143', '16：00', null, '2', '5', 144, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('144', '144', '15：00', null, '2', '5', 145, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('145', '145', '14：00', null, '2', '5', 146, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('146', '146', '13：00', null, '2', '5', 147, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('147', '147', '12：00', null, '2', '5', 148, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('148', '148', '11：00', null, '2', '5', 149, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('149', '149', '10：00', null, '2', '5', 150, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('150', '150', '09：00', null, '2', '5', 151, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('151', '151', '08：00', null, '2', '5', 152, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('152', '152', '07：00', null, '2', '5', 153, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('153', '153', '06：00', null, '2', '5', 154, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('154', '154', '24：00', null, '2', '6', 155, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('155', '155', '23：00', null, '2', '6', 156, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('156', '156', '22：00', null, '2', '6', 157, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('157', '157', '21：00', null, '2', '6', 158, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('158', '158', '20：00', null, '2', '6', 159, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('159', '159', '19：00', null, '2', '6', 160, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('160', '160', '18：00', null, '2', '6', 161, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('161', '161', '17：00', null, '2', '6', 162, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('162', '162', '16：00', null, '2', '6', 163, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('163', '163', '15：00', null, '2', '6', 164, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('164', '164', '14：00', null, '2', '6', 165, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('165', '165', '13：00', null, '2', '6', 166, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('166', '166', '12：00', null, '2', '6', 167, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('167', '167', '11：00', null, '2', '6', 168, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('168', '168', '10：00', null, '2', '6', 169, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('169', '169', '09：00', null, '2', '6', 170, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('170', '170', '08：00', null, '2', '6', 171, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('171', '171', '07：00', null, '2', '6', 172, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('172', '172', '24：00', null, '2', '7', 173, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('173', '173', '23：00', null, '2', '7', 174, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('174', '174', '22：00', null, '2', '7', 175, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('175', '175', '21：00', null, '2', '7', 176, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('176', '176', '20：00', null, '2', '7', 177, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('177', '177', '19：00', null, '2', '7', 178, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('178', '178', '18：00', null, '2', '7', 179, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('179', '179', '17：00', null, '2', '7', 180, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('180', '180', '16：00', null, '2', '7', 181, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('181', '181', '15：00', null, '2', '7', 182, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('182', '182', '14：00', null, '2', '7', 183, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('183', '183', '13：00', null, '2', '7', 184, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('184', '184', '12：00', null, '2', '7', 185, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('185', '185', '11：00', null, '2', '7', 186, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('186', '186', '10：00', null, '2', '7', 187, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('187', '187', '09：00', null, '2', '7', 188, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('188', '188', '08：00', null, '2', '7', 189, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('189', '189', '24：00', null, '2', '8', 190, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('190', '190', '23：00', null, '2', '8', 191, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('191', '191', '22：00', null, '2', '8', 192, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('192', '192', '21：00', null, '2', '8', 193, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('193', '193', '20：00', null, '2', '8', 194, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('194', '194', '19：00', null, '2', '8', 195, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('195', '195', '18：00', null, '2', '8', 196, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('196', '196', '17：00', null, '2', '8', 197, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('197', '197', '16：00', null, '2', '8', 198, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('198', '198', '15：00', null, '2', '8', 199, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('199', '199', '14：00', null, '2', '8', 200, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('200', '200', '13：00', null, '2', '8', 201, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('201', '201', '12：00', null, '2', '8', 202, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('202', '202', '11：00', null, '2', '8', 203, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('203', '203', '10：00', null, '2', '8', 204, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('204', '204', '09：00', null, '2', '8', 205, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('205', '205', '24：00', null, '2', '9', 206, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('206', '206', '23：00', null, '2', '9', 207, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('207', '207', '22：00', null, '2', '9', 208, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('208', '208', '21：00', null, '2', '9', 209, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('209', '209', '20：00', null, '2', '9', 210, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('210', '210', '19：00', null, '2', '9', 211, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('211', '211', '18：00', null, '2', '9', 212, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('212', '212', '17：00', null, '2', '9', 213, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('213', '213', '16：00', null, '2', '9', 214, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('214', '214', '15：00', null, '2', '9', 215, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('215', '215', '14：00', null, '2', '9', 216, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('216', '216', '13：00', null, '2', '9', 217, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('217', '217', '12：00', null, '2', '9', 218, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('218', '218', '11：00', null, '2', '9', 219, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('219', '219', '10：00', null, '2', '9', 220, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('220', '220', '24：00', null, '2', '10', 221, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('221', '221', '23：00', null, '2', '10', 222, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('222', '222', '22：00', null, '2', '10', 223, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('223', '223', '21：00', null, '2', '10', 224, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('224', '224', '20：00', null, '2', '10', 225, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('225', '225', '19：00', null, '2', '10', 226, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('226', '226', '18：00', null, '2', '10', 227, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('227', '227', '17：00', null, '2', '10', 228, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('228', '228', '16：00', null, '2', '10', 229, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('229', '229', '15：00', null, '2', '10', 230, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('230', '230', '14：00', null, '2', '10', 231, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('231', '231', '13：00', null, '2', '10', 232, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('232', '232', '12：00', null, '2', '10', 233, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('233', '233', '11：00', null, '2', '10', 234, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('234', '234', '24：00', null, '2', '11', 235, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('235', '235', '23：00', null, '2', '11', 236, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('236', '236', '22：00', null, '2', '11', 237, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('237', '237', '21：00', null, '2', '11', 238, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('238', '238', '20：00', null, '2', '11', 239, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('239', '239', '19：00', null, '2', '11', 240, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_HDSJ (wid, dm, mc, ywmc, cc, ls, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by1, by2, sjly, czlx, clrq)
values ('240', '240', '18：00', null, '2', '11', 241, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, null, null, 'I', to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_SBWZ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('1', '2', '院系学工处领导审批', 1, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_SBWZ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('2', '3', '社团指导老师审批', 2, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_SBWZ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('3', '4', '安全负责人审批', 3, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_SBWZ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('4', '5', '团委负责人审批', 4, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_SBWZ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('5', '6', '保卫处审批', 5, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_SBWZ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('6', '7', '保卫处领导审批', 6, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_SF (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('1', '1', '是', 1, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_SF (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('2', '2', '否', 2, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));

insert into T_CDSQ_YJ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('1', '1', '同意', 1, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_YJ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('2', '2', '不同意', 2, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
insert into T_CDSQ_YJ (wid, dm, mc, px, sfsy, fbqk, ybzdm, qssyrq, zzsyrq, bzly, by2, czlx, by1, sjly, clrq)
values ('3', '3', '退回修改', 3, 1, 1, null, to_date('01-03-2015', 'dd-mm-yyyy'), null, 'GB', null, 'I', null, null, to_date('01-03-2015', 'dd-mm-yyyy'));
