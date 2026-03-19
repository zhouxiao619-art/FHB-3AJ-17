#ifndef KEYSCAN_H_
#define	KEYSCAN_H_

//===================== key config ============================
#define SINGLE_KEY_TIME     100       // SINGLE_KEY_TIME*10us = 10MS

extern byte Long_click;
extern byte Long_click_bak;
extern word key_time;
extern byte Long_click1;
extern byte Long_click_bak1;
extern word key_time1;
extern byte Long_click2;
extern byte Long_click_bak2;
extern word key_time2;
void KEY_SCAN();
void Start_M1();
void End_M4();
extern word m1_t;
extern word m4_t;

#endif
