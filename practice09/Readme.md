# Lab 10 (practice 09)

## 실습 내용

### **리모컨 송신 신호 - FPGA 수신**

#### **module nco** : clk 형성 (1M Hz clk -> 1초에 1M번 진동) , 32bit 카운터 형성 ( data 개수 세는 카운터 )

#### **module fnd_dec** : 0~9, A~f의 값을 갖는 4bit 입력 신호를 받아 7bit FND segment display 값 출력

#### **module double_fig_sep** : segments 를 2개로 분리 

#### **module led_disp** : fnd_dec 6개에서 나온 각각의 7bit segment 를 합하여 42 bit six digit segment를 입력으로 받아 display상 출력으로 연결 

#### **module ir_rx** : 리모콘 송신 신호 받기 위한 각각의 상태와 bit 할당, 송신 신호의 이전값과 현재 값의 모니터링을 통한 상태 분석

#### **Top module** : ir_rx와 fnd_dec, led_disp 모듈을 연결

### FPGA 실습  : 리모콘을 이용해 리모콘 소자의 값을 led display로 출력


## 결과 ### **Top Module 의 DUT/TestBench Code 및 Waveform 검증**
![](https://github.com/tweetyzz/LogicDesign/blob/master/practice09/%EC%BA%A1%EC%B2%98.(practice09).PNG)

: leader code 가 0->1 로 변할 때 부터 data 받기 시작, custom code와 data code 이어서 받게 됨. 

![](https://github.com/tweetyzz/LogicDesign/blob/master/practice09/practice09%20%EC%82%AC%EC%A7%84.jpg)

: 리모콘을 이용해 display에 표시.