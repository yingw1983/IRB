setwd("E:/Rwork")
# 1.    贷款明细数据
# 1.1   原始数据导入
loaninfo201301<-read.table("data/loaninfo/201301公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201302<-read.table("data/loaninfo/201302公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201303<-read.table("data/loaninfo/201303公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201304<-read.table("data/loaninfo/201304公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201305<-read.table("data/loaninfo/201305公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201306<-read.table("data/loaninfo/201306公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201307<-read.table("data/loaninfo/201307公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201308<-read.table("data/loaninfo/201308公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201309<-read.table("data/loaninfo/201309公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201310<-read.table("data/loaninfo/201310公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201311<-read.table("data/loaninfo/201311公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201312<-read.table("data/loaninfo/201312公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201401<-read.table("data/loaninfo/201401公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201402<-read.table("data/loaninfo/201402公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)
loaninfo201403<-read.table("data/loaninfo/201403公司表内贷款明细_dese.txt",header=TRUE,sep='|',fill=TRUE,stringsAsFactors=FALSE)

##loaninfo_offbs201301<-read.table("data/loaninfo/201301公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201302<-read.table("data/loaninfo/201302公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201303<-read.table("data/loaninfo/201303公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201304<-read.table("data/loaninfo/201304公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201305<-read.table("data/loaninfo/201305公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201306<-read.table("data/loaninfo/201306公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201307<-read.table("data/loaninfo/201307公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201308<-read.table("data/loaninfo/201308公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201309<-read.table("data/loaninfo/201309公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201310<-read.table("data/loaninfo/201310公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201311<-read.table("data/loaninfo/201311公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201312<-read.table("data/loaninfo/201312公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201401<-read.table("data/loaninfo/201401公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201402<-read.table("data/loaninfo/201402公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)
##loaninfo_offbs201403<-read.table("data/loaninfo/201403公司表外贷款明细_update_dese.txt",header=TRUE,sep='|',fill=TRUE)

# 1.2   调整表头并合并
loaninfo201301<-loaninfo201301[c(-4,-35)]
loaninfo201301<-cbind(loaninfo201301[c(1:26)],NA,loaninfo201301[c(27:33)])
loaninfo201302<-loaninfo201302[c(-4,-36)]
loaninfo201303<-loaninfo201303[c(-4,-36)]
loaninfo201304<-loaninfo201304[c(-4,-36)]
loaninfo201305<-loaninfo201305[c(-4,-36)]
loaninfo201306<-loaninfo201306[c(-4,-36)]
loaninfo201307<-loaninfo201307[c(-4,-36)]
loaninfo201308<-loaninfo201308[c(-4,-36)]
loaninfo201309<-loaninfo201309[c(-4,-36)]
loaninfo201310<-loaninfo201310[c(-4,-36)]
loaninfo201311<-loaninfo201311[c(-4,-36)]
loaninfo201312<-loaninfo201312[c(-4,-36)]
loaninfo201401<-loaninfo201401[c(-4,-36)]
loaninfo201402<-loaninfo201402[c(-4,-36)]
loaninfo201403<-loaninfo201403[c(-4,-36)]
loaninfo_name<-c('NO',
                 'PLACE',
                 'CUSTOM_NO',
                 'SERIALNO',
                 'CONTRACTNO',
                 'LOANACCOUNTNO',
                 'FINACCOUNT',
                 'CURRENTACCOUNTNO',
                 'CURRENTFINACCOUNT',
                 'LOANAMOUNT',
                 'LOANBALANCE',
                 'CURRENCY',
                 'DISAMOUNT',
                 'DISBALANCE',
                 'RATE',
                 'FLOATTYPE',
                 'FLOATPER',
                 'FIXPER',
                 'TYPE',
                 'TYPENAME',
                 'TPYEDETAIL',
                 'DETAILNAME',
                 'PUTOUTDAYE',
                 'MATURITY',
                 'FIRSTINDUSTRY',
                 'SECONDINDUSTRY',
                 'FOURINDUSTRY',
                 'CUSTOMERSIZE',
                 'CUSTOMERDEVE',
                 'RISKLEVEL',
                 'WARRANTCLASS',
                 'WARRANTDETAIL',
                 'WARRANTWEIGHT',
                 'ORIGINSIZE')
names(loaninfo201301)<-loaninfo_name
names(loaninfo201302)<-loaninfo_name
names(loaninfo201303)<-loaninfo_name
names(loaninfo201304)<-loaninfo_name
names(loaninfo201305)<-loaninfo_name
names(loaninfo201306)<-loaninfo_name
names(loaninfo201307)<-loaninfo_name
names(loaninfo201308)<-loaninfo_name
names(loaninfo201309)<-loaninfo_name
names(loaninfo201310)<-loaninfo_name
names(loaninfo201311)<-loaninfo_name
names(loaninfo201312)<-loaninfo_name
names(loaninfo201401)<-loaninfo_name
names(loaninfo201402)<-loaninfo_name
names(loaninfo201403)<-loaninfo_name
loaninfo201301$ROW_DATE<-as.Date("2013-01-31")
loaninfo201302$ROW_DATE<-as.Date("2013-02-28")
loaninfo201303$ROW_DATE<-as.Date("2013-03-31")
loaninfo201304$ROW_DATE<-as.Date("2013-04-30")
loaninfo201305$ROW_DATE<-as.Date("2013-05-31")
loaninfo201306$ROW_DATE<-as.Date("2013-06-30")
loaninfo201307$ROW_DATE<-as.Date("2013-07-31")
loaninfo201308$ROW_DATE<-as.Date("2013-08-31")
loaninfo201309$ROW_DATE<-as.Date("2013-09-30")
loaninfo201310$ROW_DATE<-as.Date("2013-10-31")
loaninfo201311$ROW_DATE<-as.Date("2013-11-30")
loaninfo201312$ROW_DATE<-as.Date("2013-12-31")
loaninfo201401$ROW_DATE<-as.Date("2014-01-31")
loaninfo201402$ROW_DATE<-as.Date("2014-02-28")
loaninfo201403$ROW_DATE<-as.Date("2014-03-31")

loaninfo_all<-rbind(loaninfo201301,
      loaninfo201302,
      loaninfo201303,
      loaninfo201304,
      loaninfo201305,
      loaninfo201306,
      loaninfo201307,
      loaninfo201308,
      loaninfo201309,
      loaninfo201310,
      loaninfo201311,
      loaninfo201312,
      loaninfo201401,
      loaninfo201402,
      loaninfo201403)
rm(list=ls()[-which(ls()=="loaninfo_all")])
gc()

loaninfo_all$DateGap<-as.Date(loaninfo_all$ROW_DATE)-as.Date(loaninfo_all$MATURITY) # 计算逾期天数

loaninfo_all$OverdueFlag[loaninfo_all$DateGap<=0]<-0
loaninfo_all$OverdueFlag[loaninfo_all$DateGap>0 & loaninfo_all$DateGap<=30]<-1
loaninfo_all$OverdueFlag[loaninfo_all$DateGap>30 & loaninfo_all$DateGap<=60]<-2
loaninfo_all$OverdueFlag[loaninfo_all$DateGap>60 & loaninfo_all$DateGap<=90]<-3
loaninfo_all$OverdueFlag[loaninfo_all$DateGap>90 & loaninfo_all$DateGap<=120]<-4
loaninfo_all$OverdueFlag[loaninfo_all$DateGap>120 & loaninfo_all$DateGap<=150]<-5
loaninfo_all$OverdueFlag[loaninfo_all$DateGap>150 & loaninfo_all$DateGap<=180]<-6
loaninfo_all$OverdueFlag[loaninfo_all$DateGap>180]<-9
row.names(loaninfo_all)<-NULL
# 1.3   结果输出
save(loaninfo_all,file="output/01_data_cleansing/loaninfo_all.RData")
rm(list=ls())
gc()

# 2.    逾期数据
# 2.1   原始数据导入
overdue201301<-read.csv("data/overdue/bs_loan_payment20130131.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201302<-read.csv("data/overdue/bs_loan_payment20130228.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201303<-read.csv("data/overdue/bs_loan_payment20130331.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201304<-read.csv("data/overdue/bs_loan_payment20130430.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201305<-read.csv("data/overdue/bs_loan_payment20130531.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201306<-read.csv("data/overdue/bs_loan_payment20130630.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201307<-read.csv("data/overdue/bs_loan_payment20130731.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201308<-read.csv("data/overdue/bs_loan_payment20130831.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201309<-read.csv("data/overdue/bs_loan_payment20130930.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201310<-read.csv("data/overdue/bs_loan_payment20131031.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201311<-read.csv("data/overdue/bs_loan_payment20131130.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201312<-read.csv("data/overdue/bs_loan_payment20131231.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201401<-read.csv("data/overdue/bs_loan_payment20140131.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201402<-read.csv("data/overdue/bs_loan_payment20140228.csv",header=TRUE,stringsAsFactors=FALSE)
overdue201403<-read.csv("data/overdue/bs_loan_payment20140331.csv",header=TRUE,stringsAsFactors=FALSE)

# 2.2   数据处理 - 格式1
# 2.2.1 月度合并
overdue_temp<-rbind(overdue201303,
                    overdue201305,
                    overdue201306,
                    overdue201307,
                    overdue201308,
                    overdue201309,
                    overdue201310,
                    overdue201311,
                    overdue201312,
                    overdue201401,
                    overdue201402,
                    overdue201403)
# 2.2.2 剔除非公司数据
overdue_part1<-overdue_temp[substr(overdue_temp$CONTRACT_NO,4,4)=='C'|
                            (substr(overdue_temp$CONTRACT_NO,4,4)!='C'&
                            substr(overdue_temp$CONTRACT_NO,5,7) %in% 
                            c('800','803','805','806','807','808','815','819')),]
# 释放内存
rm(overdue201303,
   overdue201305,
   overdue201306,
   overdue201307,
   overdue201308,
   overdue201309,
   overdue201310,
   overdue201311,
   overdue201312,
   overdue201401,
   overdue201402,
   overdue201403,
   overdue_temp)
gc()
# 2.2.2 逾期标记
overdue_part1$DateGap<-as.Date(overdue_part1$ROW_DATE)-as.Date(overdue_part1$SCHED_DATE) # 计算逾期天数
overdue_part1$OverdueFlag[overdue_part1$DateGap<=0]<-0
overdue_part1$OverdueFlag[overdue_part1$DateGap>0 & overdue_part1$DateGap<=30]<-1
overdue_part1$OverdueFlag[overdue_part1$DateGap>30 & overdue_part1$DateGap<=60]<-2
overdue_part1$OverdueFlag[overdue_part1$DateGap>60 & overdue_part1$DateGap<=90]<-3
overdue_part1$OverdueFlag[overdue_part1$DateGap>90 & overdue_part1$DateGap<=120]<-4
overdue_part1$OverdueFlag[overdue_part1$DateGap>120 & overdue_part1$DateGap<=150]<-5
overdue_part1$OverdueFlag[overdue_part1$DateGap>150 & overdue_part1$DateGap<=180]<-6
overdue_part1$OverdueFlag[overdue_part1$DateGap>180]<-9
overdue_part1<-overdue_part1[overdue_part1$REPAYMENT_STATE!='4' & overdue_part1$REPAYMENT_STATE!='0',]
row.names(overdue_part1)<-NULL
# 2.2.3 输出结果
save(overdue_part1,file="output/01_data_cleansing/overdue_part1.RData")
rm(overdue_part1)
gc()

# 2.2   数据处理 - 格式2
overdue_part2<-rbind(overdue201301,overdue201302,overdue201304)
overdue_part2<-overdue_part2[c(3,4,22,1)]
name.tmp<-c('LOAN_ID','CUSTOMER_ID','OVERDUE_DATE','ROW_DATE')
names(overdue_part2)<-name.tmp
overdue_part2$DateGap<-as.Date(overdue_part2$ROW_DATE)-as.Date(overdue_part2$OVERDUE_DATE)
overdue_part2$OverdueFlag[overdue_part2$DateGap<=0]<-0
overdue_part2$OverdueFlag[overdue_part2$DateGap>0 & overdue_part2$DateGap<=30]<-1
overdue_part2$OverdueFlag[overdue_part2$DateGap>30 & overdue_part2$DateGap<=60]<-2
overdue_part2$OverdueFlag[overdue_part2$DateGap>60 & overdue_part2$DateGap<=90]<-3
overdue_part2$OverdueFlag[overdue_part2$DateGap>90 & overdue_part2$DateGap<=120]<-4
overdue_part2$OverdueFlag[overdue_part2$DateGap>120 & overdue_part2$DateGap<=150]<-5
overdue_part2$OverdueFlag[overdue_part2$DateGap>150 & overdue_part2$DateGap<=180]<-6
overdue_part2$OverdueFlag[overdue_part2$DateGap>180]<-9

















