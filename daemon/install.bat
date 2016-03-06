rem  --StartPath %~dp0 ^
rem  --StopPath %~dp0 ^
rem  --Install %~dp0amd64\prunsrv.exe ^
rem jp.pgw.develop.swallow.daemon.Bootstrap
rem  --StartParams start ^
rem  --StopParams stop ^
%~dp0amd64\prunsrv //IS//DaemonSample ^
  --Description "Daemon Sample" ^
  --DisplayName "Daemon Sample" ^
  --LibraryPath %~dp0dll ^
  --LogPath %~dp0logs ^
  --StdOutput auto ^
  --StdError auto ^
  --Classpath "%~dp0libs\*" ^
  --Jvm C:\dev\jdk1.8.0_74\jre\bin\server\jvm.dll ^
  --StartMode jvm ^
  --StopMode jvm ^
  --StartClass org.apache.camel.spring.Main ^
  --StopClass jp.pgw.develop.swallow.daemon.Shutdown ^
  --JvmMs 128 ^
  --JvmMx 256
