Sys.setenv(HADOOP_CMD="/usr/bin/hadoop") 
Sys.setenv(HADOOP_STREAMING="/usr/hdp/2.3.0.0-2557/hadoop-mapreduce/hadoop-streaming-2.7.1.2.3.0.0-2557.jar")

library(rmr2)
library(rhdfs)

hdfs.init()



#matrix
x <- as.matrix(1:1000000, nrow=10000, ncol =100 )
matrix=to.dfs(x)
from.dfs(mapreduce(input=matrix ,map = function(k, v) keyval(NULL,t(as.matrix(v))%*%(as.matrix(v)) )))



Output
from.dfs(mapreduce(input=matrix ,map = function(k, v) keyval(NULL,t(as.matrix(v))%*%(as.matrix(v)) )))
WARNING: Use "yarn jar" to launch YARN applications.
packageJobJar: [] [/usr/hdp/2.3.0.0-2557/hadoop-mapreduce/hadoop-streaming-2.7.1.2.3.0.0-2557.jar] /tmp/streamjob4341749811976425158.jar tmpDir=null
15/09/13 19:04:28 INFO impl.TimelineClientImpl: Timeline service address: http://sandbox.hortonworks.com:8188/ws/v1/timeline/
  15/09/13 19:04:28 INFO client.RMProxy: Connecting to ResourceManager at sandbox.hortonworks.com/10.0.2.15:8050
15/09/13 19:04:28 INFO impl.TimelineClientImpl: Timeline service address: http://sandbox.hortonworks.com:8188/ws/v1/timeline/
  15/09/13 19:04:28 INFO client.RMProxy: Connecting to ResourceManager at sandbox.hortonworks.com/10.0.2.15:8050
15/09/13 19:04:29 INFO mapred.FileInputFormat: Total input paths to process : 1
15/09/13 19:04:29 INFO mapreduce.JobSubmitter: number of splits:2
15/09/13 19:04:29 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1442169771664_0003
15/09/13 19:04:30 INFO impl.YarnClientImpl: Submitted application application_1442169771664_0003
15/09/13 19:04:30 INFO mapreduce.Job: The url to track the job: http://sandbox.hortonworks.com:8088/proxy/application_1442169771664_0003/
  15/09/13 19:04:30 INFO mapreduce.Job: Running job: job_1442169771664_0003
15/09/13 19:04:36 INFO mapreduce.Job: Job job_1442169771664_0003 running in uber mode : false
15/09/13 19:04:36 INFO mapreduce.Job:  map 0% reduce 0%
  15/09/13 19:04:42 INFO mapreduce.Job:  map 100% reduce 0%
  15/09/13 19:04:42 INFO mapreduce.Job: Job job_1442169771664_0003 completed successfully
15/09/13 19:04:42 INFO mapreduce.Job: Counters: 30
File System Counters
FILE: Number of bytes read=0
FILE: Number of bytes written=261004
FILE: Number of read operations=0
FILE: Number of large read operations=0
FILE: Number of write operations=0
HDFS: Number of bytes read=2509023
HDFS: Number of bytes written=1032
HDFS: Number of read operations=14
HDFS: Number of large read operations=0
HDFS: Number of write operations=4
Job Counters 
Launched map tasks=2
Data-local map tasks=2
Total time spent by all maps in occupied slots (ms)=8468
Total time spent by all reduces in occupied slots (ms)=0
Total time spent by all map tasks (ms)=8468
Total vcore-seconds taken by all map tasks=8468
Total megabyte-seconds taken by all map tasks=2117000
Map-Reduce Framework
Map input records=11
Map output records=6
Input split bytes=216
Spilled Records=0
Failed Shuffles=0
Merged Map outputs=0
GC time elapsed (ms)=74
CPU time spent (ms)=1690
Physical memory (bytes) snapshot=314871808
Virtual memory (bytes) snapshot=2093318144
Total committed heap usage (bytes)=308281344
File Input Format Counters 
Bytes Read=2508807
File Output Format Counters 
Bytes Written=1032
15/09/13 19:04:42 INFO streaming.StreamJob: Output directory: /tmp/file160b3ef0fe86
15/09/13 19:04:46 INFO fs.TrashPolicyDefault: Namenode trash configuration: Deletion interval = 360 minutes, Emptier interval = 0 minutes.
Moved: 'hdfs://sandbox.hortonworks.com:8020/tmp/file160b405bc34f' to trash at: hdfs://sandbox.hortonworks.com:8020/user/sandbox/.Trash/Current
WARNING: Use "yarn jar" to launch YARN applications.
WARNING: Use "yarn jar" to launch YARN applications.
$key
NULL

$val
[,1]
[1,] 1.927299e+17
[2,] 1.406039e+17