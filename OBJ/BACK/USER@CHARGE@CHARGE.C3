#include 	"CHARGE.H"
#include 	"../CONFIG/CONFIG.H"
#include  	"../GPC/GPC.H"
#include  	"../KEYSCAN/KEYSCAN.H"

Byte CHARGE_STEP;

void CHARGE_MOD(void)
{
	if(CHARGE_STEP == 0) //充电检测
	{
		.delay 10000;
		if(CHARGE)
		{
			Close_Hardware();
			Power_down_flag = 0;	//充电玩成进入 省电模式
			CHARGE_STEP = 1;
			VDD_count = 0;

			Charge_GPC_Init();

			Long_click = 0xFF;
			key_time = 0;
		}
	}

	if(CHARGE_STEP == 1)	//充电呼吸
	{
		if(CHARGE_FULL)
		{
			if(VDD_count >= 10000)CHARGE_STEP = 2;
		}
		else VDD_count = 0;

		Charge_GPC_Measure();

		BREATH_Switch = 1;
		BREATH_time = 1;
	}

	if(CHARGE_STEP == 2)	//充满常亮
	{
		LED1 = LED_ON;
		BREATH_Switch = 0;
	}
}