#! /bin/bash
#SQOOP_HOME=/opt/cloudera/parcels/CDH-6.2.1-1.cdh6.2.1.p0.1425774/bin/sqoop
SQOOP_HOME=/usr/bin/sqoop
if [[ $1 == "" ]];then
   TD_DATE=`date -d '1 days ago'  "+%Y-%m-%d"`
else
   TD_DATE=$1
fi

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '2022-05-29' as dt from customer where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table customer \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '2022-05-29' as dt from customer_appeal where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table customer_appeal \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '${TD_DATE}' as dt from customer_clue where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table customer_clue \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '${TD_DATE}' as dt from customer_relationship where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table customer_relationship \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '${TD_DATE}' as dt from itcast_school where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table itcast_school \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '${TD_DATE}' as dt from itcast_subject where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table itcast_subject \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '${TD_DATE}' as dt from employee where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table employee \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '${TD_DATE}' as dt from itcast_clazz where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table itcast_clazz \
-m 1

wait

/usr/bin/sqoop import "-Dorg.apache.sqoop.splitter.allow_text_splitter=true" \
--connect 'jdbc:mysql://106.75.33.59:3306/scrm?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true' \
--username itcast_edu_stu \
--password itcast_edu_stu \
--query "select *, '${TD_DATE}' as dt from scrm_department where 1=1 and \$CONDITIONS" \
--hcatalog-database zx_ods \
--hcatalog-table scrm_department \
-m 1