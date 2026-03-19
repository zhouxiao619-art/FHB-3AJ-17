#include "LED.H"
#include 	"../CONFIG/CONFIG.H"
#include 	"../MOTOR/MOTOR.H"

bit BREATH_Switch;
BYTE BREATH_DUTY;
bit Add_sign;
byte BREATH_DUTY_temp;

word BREATH_time;			//300   6

word LED_icnt_timer;
BYTE LED_icnt;
BYTE LED_Flag;

void led_task()
{
	
}

void Led_start(byte LED_Flag_Temp)
{
	LED_Flag = LED_Flag_Temp;
	LED_icnt = 1;
	if(LED_Flag==2) led2= 0;
	else if(LED_Flag==3) led3= 0;
	LED_icnt_timer = 0;
}

void Func_LED()
{
	if(LED_icnt)
	{
		if(LED_icnt_timer > 3000)
		{
			LED_icnt_timer = 0;
			LED_icnt--;
			if(LED_Flag==2)
			{
				if(LED2)
				{
					LED2 = 0;
				}
				else
				{
					LED2 = 1;
				}
			}
			else if(LED_Flag==3)
			{
				if(LED3)
				{
					LED3 = 0;
				}
				else
				{
					LED3 = 1;
				}
			}
		}
	}
	else
	{
		if(Motor_mode_m1)
		{
			led2 = 1;
		}
		else
		{
			led2 = 0;
		}
		if(Motor_mode_m2)
		{
			led3 = 1;
		}
		else
		{
			led3 = 0;
		}
	}	
}


void BREATH_LIGHT_MOD(void)
{
	if(BREATH_Switch == 1)
	{
		if(LED_icnt_timer >= BREATH_time)
		{
			LED_icnt_timer = 0;
			BREATH_DUTY_temp++;
			if(Add_sign)
			{
				if(BREATH_DUTY_temp > 2)
				{
					BREATH_DUTY_temp = 0;
					BREATH_DUTY+=2;
				}
				if(BREATH_DUTY >= BREATH_time)
				{
					Add_sign = 0;
				}
			}
			else 
			{
				if(BREATH_DUTY_temp > 2)
				{
					BREATH_DUTY_temp = 0;
					BREATH_DUTY-=2;
				}
				if(BREATH_DUTY == 0)
				{
					Add_sign = 1;
				}
			}
		}

	 	if(LED_icnt_timer < BREATH_DUTY)
		{
			LED1 = 1;
		}
		else
		{
			LED1 = 0;
		}
	}
}