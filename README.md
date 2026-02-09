# IDS-Simulator

Project Structure
IDS/
│
├── README.md
├── Makefile
│
├── data/
│   ├── sample_logs.csv
│   └── sample_logs_2.csv
│
├── output/
│   ├── alerts.txt
│   └── report.txt
│
├── include/
│   ├── core/
│   │   ├── LogEntry.h
│   │   ├── LogParser.h
│   │   ├── IDS.h
│   │
│   ├── detection/
│   │   ├── DetectionRule.h
│   │   ├── PortScanRule.h
│   │   ├── DDoSRule.h
│   │   ├── BruteForceRule.h
│   │
│   ├── utils/
│   │   ├── FileUtils.h
│   │   ├── TimeUtils.h
│   │   └── StringUtils.h
│
├── src/
│   ├── core/
│   │   ├── LogEntry.cpp
│   │   ├── LogParser.cpp
│   │   ├── IDS.cpp
│   │
│   ├── detection/
│   │   ├── PortScanRule.cpp
│   │   ├── DDoSRule.cpp
│   │   ├── BruteForceRule.cpp
│   │
│   ├── utils/
│   │   ├── FileUtils.cpp
│   │   ├── TimeUtils.cpp
│   │   └── StringUtils.cpp
│
├── tests/
│   ├── LogParserTest.cpp
│   └── DetectionRuleTest.cpp
│
└── main.cpp
