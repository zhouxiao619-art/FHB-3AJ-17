#include "KEYSCAN.H"
#include 	"../CONFIG/CONFIG.H"
#include 	"../CHARGE/CHARGE.H"
#include 	"../MOTOR/MOTOR.H"
#include 	"../GPC/GPC.H"
#include 	"../LED/LED.H"

word key_time;
byte Long_click;
byte Long_click_bak;
word key_time1;
byte Long_click1;
byte Long_click_bak1;
word key_time2;
byte Long_click2;
byte Long_click_bak2;

void KEY_SCAN()
{
	if(KEY1)
	{
		key_time = 0;
		Long_click = 0;
	}

	if(Long_click_bak != Long_click)		
	{
		if(Power_down_flag)
		{
			if(Long_click == 1)
			{
				Close_Hardware();
				Power_down_flag = 0;
				Long_click = 0xFF;
				key_time = 0;
				Long_click1 = 0xFF;
				key_time1 = 0;
				Long_click2 = 0xFF;
				key_time2 = 0;
			}
		}
		else
		{
			if(Long_click == 1)			
			{
				Motor_mode_m1 = 0;
				Bak_Motor_mode_m1 = 0xff;
				Motor_mode_m2 = 0;
				Bak_Motor_mode_m2 = 0xff;
				Power_down_flag = 1;
				VDD_count = 0;
				Long_click = 0xFF;
				key_time = 0;
				Long_click1 = 0xFF;
				key_time1 = 0;
				Long_click2 = 0xFF;
				key_time2 = 0;
				LED1 = LED_ON;
			}
		}
		Long_click_bak = Long_click;
	}
	if(KEY2)
	{
		if((key_time1 >= SINGLE_KEY_TIME) && (Long_click1 != 1))			
		{
			if(Power_down_flag)
			{
				Motor_mode_m1++;
				if(Motor_mode_m1 > 10)
				{
					Motor_mode_m1 = 1;
				}
				Led_start(2);
			}
			else
			{
				Motor_mode_m1 = 0;
				Bak_Motor_mode_m1 = 0xff;
			}
		}
		key_time1 = 0;
		Long_click1 = 0;
	}

	if(Long_click_bak1!= Long_click1)		
	{
		if(Power_down_flag)
		{
			if(Long_click1 == 1)
			{
				Long_click1 = 0xFF;
				PWM_duty_m1 = 0;
				MOTOR1 = 0;
				LED2 = 0;
				Motor_mode_m1 = 0;
				Bak_Motor_mode_m1 = 0xff;
				key_time1 = 0;
			}
		}
		else
		{
			if(Long_click1 == 1)			
			{
				Long_click1 = 0xFF;
				key_time1 = 0;
			}
		}
		Long_click_bak1 = Long_click1;
	}

	if(KEY3)
	{
		if((key_time2 >= SINGLE_KEY_TIME) && (Long_click2 != 1))			
		{
			if(Power_down_flag)
			{
				Motor_mode_m2++;
				if(Motor_mode_m2 > 10)
				{
					Motor_mode_m2 = 1;
				}
				Led_start(3);
			}
			else
			{
				Motor_mode_m2 = 0;
				Bak_Motor_mode_m2 = 0xff;
			}
		}
		key_time2 = 0;
		Long_click2 = 0;
	}

	if(Long_click_bak2 != Long_click2)		
	{
		if(Power_down_flag)
		{
			if(Long_click2 == 1)
			{
				Long_click2 = 0xFF;
				PWM_duty_m2 = 0;
				MOTOR2 = 0;
				LED3 = 0;
				Motor_mode_m2 = 0;
				Bak_Motor_mode_m2 = 0xff;
				key_time2 = 0;
			}
		}
		else
		{
			if(Long_click2 == 1)			
			{
				Long_click2 = 0xFF;
				key_time2 = 0;
			}
		}
		Long_click_bak = Long_click;
	}
}