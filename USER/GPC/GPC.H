#ifndef GPC_H_
#define	GPC_H_

#include 	"../CONFIG/CONFIG.h"


extern word VDD_count;
extern dword Charge_GPC_timer_icnt;

void	GPC_Init(void);
void	Measure_GPC(void);


void Charge_GPC_Init();
void Charge_GPC_Measure();



#endif