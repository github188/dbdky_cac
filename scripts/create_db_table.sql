create database if not exists `omsdb`;
use `omsdb`;

# bd_cd
drop table if exists `bd_cd`;

CREATE TABLE `bd_cd` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `LinkedDevice` char(17) NOT NULL DEFAULT '',
  `DeviceCode` char(17) NOT NULL DEFAULT '',
  `Phase` varchar(10) DEFAULT NULL,
  `JCLXBM` varchar(30) DEFAULT NULL,
  `BDZMC` varchar(50) DEFAULT NULL,
  `SSZT` varchar(6) DEFAULT NULL,
  `BJCSBMC` varchar(30) DEFAULT NULL,
  `JCLXMC` varchar(30) DEFAULT NULL,
  `ZIEDID` varchar(30) DEFAULT NULL,
  `IEDID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`OBJID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8;

# bd_bj_gl
drop table if exists `bd_bj_gl`;
CREATE TABLE `bd_bj_gl` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID`  varchar(20) NOT NULL DEFAULT '',
  `BJSJ` datetime DEFAULT NULL,
  `BJNR` varchar(200) DEFAULT NULL,
  `BJYS` nvarchar(20) DEFAULT NULL ,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;

# bd_blqjyjc
drop table if exists `bd_blqjyjc`;
CREATE TABLE `bd_blqjyjc` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `SystemVoltage` decimal(9,3) DEFAULT NULL,
  `TotalCurrent` decimal(9,3) DEFAULT NULL,
  `ResistiveCurrent` decimal(9,3) DEFAULT NULL,
  `ActionCount` int DEFAULT NULL,
  `LastActionTime` datetime DEFAULT NULL,
   PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=3000000 DEFAULT CHARSET=utf8;

# bd_cndj
drop table if exists `bd_cndj`;
CREATE TABLE `bd_cndj` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `ChargetTime` int DEFAULT NULL,
   PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=40000000 DEFAULT CHARSET=utf8;

# bd_dcyw
drop table if exists `bd_dcyw`;
CREATE TABLE `bd_dcyw` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `OilTemperature` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=6000000 DEFAULT CHARSET=utf8;

# bd_blqjbfd
drop table if exists `bd_blqjbfd`;
CREATE TABLE `bd_blqjbfd` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `DischargeCapacity` decimal(12,3) DEFAULT NULL,
  `DischargePosition` decimal(12,3) DEFAULT NULL,
  `PulseCount` int DEFAULT NULL,
  `DischargeWaveform` blob DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=10000000 DEFAULT CHARSET=utf8;

# bd_drjyjc
drop table if exists `bd_drjyjc`;
CREATE TABLE `bd_drjyjc` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Capacitance` decimal(12,3) DEFAULT NULL,
  `LossFactor` decimal(12,3) DEFAULT NULL,
  `UnbalanceCurrent` decimal(12,3) DEFAULT NULL,
  `UnbalanceVoltage` decimal(12,3) DEFAULT NULL,
  `TotalCurrent` decimal(12,3) DEFAULT NULL,
  `SystemVoltage` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=30000000 DEFAULT CHARSET=utf8;

# bd_fhdlwave
drop table if exists `bd_fhdlwave`;
CREATE TABLE `bd_fhdlwave` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Action` int DEFAULT NULL,
  `LoadWaveform` blob DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=10000000 DEFAULT CHARSET=utf8;

# bd_fhzxqwave
drop table if exists `bd_fhzxqwave`;
CREATE TABLE `bd_fhzxqwave`
(
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Action` int DEFAULT NULL,
  `LoadWaveform` blob DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=20000000 DEFAULT CHARSET=utf8;

# bd_hjjc
drop table if exists `bd_hjjc`;
CREATE TABLE `bd_hjjc` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Temperature` decimal(9,3) DEFAULT NULL,
  `Humiditure` decimal(9,3) DEFAULT NULL,
   PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=4000000 DEFAULT CHARSET=utf8;

# bd_jbfd
drop table if exists `bd_jbfd`;
CREATE TABLE `bd_jbfd` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `DischargeCapacity` decimal(12,3) DEFAULT NULL,
  `DischargePosition` decimal(12,3) DEFAULT NULL,
  `PulseCount` int DEFAULT NULL,
  `DischargeWaveform` blob DEFAULT NULL,
   PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=5000000 DEFAULT CHARSET=utf8;

# bd_rz_gl
drop table if exists `bd_rz_gl`;
CREATE TABLE `bd_rz_gl` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `RZSJ` datetime DEFAULT NULL,
  `RZNR` varchar(200) DEFAULT NULL,
   PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

# bd_rzcw
drop table if exists `bd_rzcw`;
CREATE TABLE `bd_rzcw` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `JCSJ` datetime DEFAULT NULL,
  `RZWD` decimal(6,2) DEFAULT NULL,
   PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=7000000 DEFAULT CHARSET=utf8;

# bd_sf6
drop table if exists `bd_sf6`;
CREATE TABLE `bd_sf6` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Temperature` decimal(12,3) DEFAULT NULL,
  `AbsolutePressure` decimal(12,3) DEFAULT NULL,
  `Density` decimal(12,3) DEFAULT NULL,
  `Pressure20C` decimal(12,3) DEFAULT NULL,
  `Moisture` decimal(12,3) DEFAULT NULL,
   PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;

# bd_sf6ws
drop table if exists `bd_sf6ws`;
CREATE TABLE `bd_sf6ws` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Temperature` decimal(12,3) DEFAULT NULL,
  `Moisture` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=40000000 DEFAULT CHARSET=utf8;

# bd_txxl
drop table if exists `bd_txxl`;
CREATE TABLE `bd_txxl` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `TotalCoreCurrent` decimal(6,1) DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8;

# bd_ws
drop table if exists `bd_ws`;
CREATE TABLE `bd_ws` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Moisture` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=60000000 DEFAULT CHARSET=utf8;

# bd_wxws
drop table if exists `bd_wxws`;
CREATE TABLE `bd_wxws` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `Temperature` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=60000000 DEFAULT CHARSET=utf8;

# bd_yzrj
drop table if exists `bd_yzrj`;
CREATE TABLE `bd_yzrj` (
  `OBJID` int(11) NOT NULL AUTO_INCREMENT,
  `CDID` varchar(8) NOT NULL DEFAULT '',
  `AcquisitionTime` datetime DEFAULT NULL,
  `H2` decimal(12,3) DEFAULT NULL,
  `CH4` decimal(12,3) DEFAULT NULL,
  `C2H6` decimal(12,3) DEFAULT NULL,
  `C2H4` decimal(12,3) DEFAULT NULL,
  `C2H2` decimal(12,3) DEFAULT NULL,
  `CO` decimal(12,3) DEFAULT NULL,
  `CO2` decimal(12,3) DEFAULT NULL,
  `O2` decimal(12,3) DEFAULT NULL,
  `N2` decimal(12,3) DEFAULT NULL,
  `TotalHydrocarbon` decimal(12,3) DEFAULT NULL,
  `H2Rate` decimal(12,3) DEFAULT NULL,
  `C2H2Rate` decimal(12,3) DEFAULT NULL,
  `CORate` decimal(12,3) DEFAULT NULL,
  `CO2Rate` decimal(12,3) DEFAULT NULL,
  `TCGRate` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY(`OBJID`)
)ENGINE=InnoDB AUTO_INCREMENT=10000001 DEFAULT CHARSET=utf8;





