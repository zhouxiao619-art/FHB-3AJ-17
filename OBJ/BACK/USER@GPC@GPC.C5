#include "GPC.H"
#include 	"../CHARGE/CHARGE.H"



word VDD_count;
dword Charge_GPC_timer_icnt;

void	GPC_Init(void)
{
	$ GPCC Enable,BANDGAP,P_R;
	$ GPCS VDD*16/40;//VDD = 3V
//	$ GPCS VDD*14/32;//VDD = 2.74285714285714V
}

void	Measure_GPC(void)
{
	GPC_Init();
	if(GPC_out)
	{
		VDD_count = 0;
	}
	else
	{
		if(VDD_count > 10000)
		{
			Power_down_flag = 0;
			VDD_count = 0;
		}
	}
}





void Charge_GPC_Init()
{
	$ GPCC Enable,BANDGAP,P_R;
	$ GPCS VDD*7/24;//VDD = 4.11428571428571V
	Charge_GPC_timer_icnt = 0;
}




void Charge_GPC_Measure()
{
	if(GPC_out)
	{
		//if(Charge_GPC_timer_icnt > 10000*30)
		if(Charge_GPC_timer_icnt > 10000*60*40)
		{
			CHARGE_STEP = 2;
		}
	}
	else
	{
		Charge_GPC_timer_icnt = 0;
	}	
}