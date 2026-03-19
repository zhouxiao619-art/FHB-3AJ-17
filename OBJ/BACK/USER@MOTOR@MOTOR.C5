#include "MOTOR.H"
#include "../CONFIG/CONFIG.H"
#include "../KEYSCAN/KEYSCAN.H"

word frequency_m1;
word set_frequency_m1;
word PWM_duty_m1;
byte Mode_count_m1;
byte PWM_count_m1;
byte Motor_mode_m1;
byte Bak_Motor_mode_m1;
byte loop_m1;

word frequency_m2;
word set_frequency_m2;
word PWM_duty_m2;
byte Mode_count_m2;
byte PWM_count_m2;
byte Motor_mode_m2;
byte Bak_Motor_mode_m2;

void motor_m1_stop()
{
	PWM_duty_m1 = 0;
	MOTOR1 = 0;
	LED2 = LED_OFF;
}

void motor_m2_stop()
{
	PWM_duty_m2 = 0;
	MOTOR2 = 0;
	LED3 = LED_OFF;
}

void M1_switch()
{
	if(Motor_mode_m1 != Bak_Motor_mode_m1)
	{
		Bak_Motor_mode_m1 = Motor_mode_m1;		
		mode_count_m1 = 0;
		PWM_count_m1 = 0;
		frequency_m1 = 0;
		loop_m1 = 0;
		switch(Motor_mode_m1)
		{
		case 0:
				PWM_duty_m1 = 0;
				set_frequency_m1 = 0;
				motor1 = 0;
			break;
		  	case 1:
					set_frequency_m1 = 100;
					PWM_duty_m1 = 45;
			break;

		  	case 2:
					set_frequency_m1 = 100;
					PWM_duty_m1 = 60;
			break;

		  	case 3:
					set_frequency_m1 = 100;
					PWM_duty_m1 = 75;
			break;

			default:
			break;
		}
	}
}
void Special_M1_pwm()
{
	if(Motor_mode_m1 == 4)
	{
		if(mode_count_m1 == 0 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			mode_count_m1 = 1;
			set_frequency_m1 = 700;
			frequency_m1 = 0;
			PWM_duty_m1 = 14;
		}
		else if(mode_count_m1 == 1 && PWM_count_m1 == 0)
		{
			if(PWM_duty_m1<518)
			{
				PWM_count_m1 = 1;
				PWM_duty_m1 +=14;
			}
			else
			{
				mode_count_m1 = 0;
			}
		}
	}

	if(Motor_mode_m1 == 5)
	{
		if(mode_count_m1 == 0 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 40;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 1;
		}
		else if(mode_count_m1 == 1 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 4000;
			PWM_duty_m1 = 1;
			mode_count_m1 = 0;
		}
	}

	if(Motor_mode_m1 == 6)
	{
		if(mode_count_m1 == 0 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 20;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 1;
		}
		else if(mode_count_m1 == 1 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 2000;
			PWM_duty_m1 = 1;
			mode_count_m1 = 0;
		}
	}

	if(Motor_mode_m1 == 7)
	{
		if(mode_count_m1 == 0 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 20;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 1;
		}
		else if(mode_count_m1 == 1 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 2000;
			PWM_duty_m1 = 1;
			loop_m1++;
			if(loop_m1 > 2)	
			{
				mode_count_m1 = 2;
				loop_m1 = 0;
			}
			else			mode_count_m1 = 0;
		}
		else if(mode_count_m1 == 2 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 100;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 3;
		}
		else if(mode_count_m1 == 3 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 2500;
			PWM_duty_m1 = 1;
			mode_count_m1 = 0;
		}
	}

	if(Motor_mode_m1 == 8)
	{
		if(mode_count_m1 == 0 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 60;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 1;
		}
		else if(mode_count_m1 == 1 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 1000;
			PWM_duty_m1 = 1;
			mode_count_m1 = 2;
		}
		else if(mode_count_m1 == 2 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 100;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 3;
		}
		else if(mode_count_m1 == 3 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 1000;
			PWM_duty_m1 = 1;
			mode_count_m1 = 4;
		}
		else if(mode_count_m1 == 4 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 150;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 5;
		}
		else if(mode_count_m1 == 5 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 1000;
			PWM_duty_m1 = 1;
			mode_count_m1 = 6;
		}
		else if(mode_count_m1 == 6 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 200;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 7;
		}
		else if(mode_count_m1 == 7 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 1000;
			PWM_duty_m1 = 1;
			mode_count_m1 = 0;
		}
	}

	if(Motor_mode_m1 == 9)
	{
		if(mode_count_m1 == 0 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 40;
			mode_count_m1 = 1;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 60;
		}
		else if(mode_count_m1 == 1 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			mode_count_m1 = 2;
			set_frequency_m1 = 2000;
			frequency_m1 = 0;
			PWM_duty_m1 = 1;
		}
		else if(mode_count_m1 == 2 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 40;
			mode_count_m1 = 3;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
		}
		else if(mode_count_m1 == 3 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			mode_count_m1 = 0;
			set_frequency_m1 = 2000;
			PWM_duty_m1 = 1;
		}
	}

	if(Motor_mode_m1 == 10)
	{
		if(mode_count_m1 == 0 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 20;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 1;
		}
		else if(mode_count_m1 == 1 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 2000;
			PWM_duty_m1 = 1;
			loop_m1++;
			if(loop_m1 > 8)	
			{
				mode_count_m1 = 2;
				loop_m1 = 0;
			}
			else			mode_count_m1 = 0;
		}
		else if(mode_count_m1 == 2 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 150;
			set_frequency_m1 = 100;
			PWM_duty_m1 = 75;
			mode_count_m1 = 3;
		}
		else if(mode_count_m1 == 3 && PWM_count_m1 == 0)
		{
			PWM_count_m1 = 1;
			set_frequency_m1 = 2500;
			PWM_duty_m1 = 1;
			mode_count_m1 = 0;
		}
	}
}

void m2_switch()
{
	if(Motor_mode_m2 != Bak_Motor_mode_m2)
	{
		Bak_Motor_mode_m2 = Motor_mode_m2;		
		mode_count_m2 = 0;
		PWM_count_m2 = 0;
		frequency_m2 = 0;
		switch(Motor_mode_m2)
		{
			case 0:
				PWM_duty_m2 = 0;
				set_frequency_m2 = 0;
				motor2 = 0;
			break;
		  	case 1:
					set_frequency_m2 = 100;
					PWM_duty_m2 = 60;
			break;

		  	case 2:
					set_frequency_m2 = 100;
					PWM_duty_m2 = 80;
			break;

		  	case 3:
					set_frequency_m2 = 100;
					PWM_duty_m2 = 100;
			break;

		  	case 5:
					set_frequency_m2 = 8000;
					PWM_duty_m2 = 4000;
			break;

			case 6:
				set_frequency_m2 = 4000;
				PWM_duty_m2 = 2000;
			break;

			default:
			break;
		}
	}
}
void Special_m2_pwm()
{
	if(Motor_mode_m2 == 4)
	{
		if(mode_count_m2 == 0 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 1;
			set_frequency_m2 = 700;
			frequency_m2 = 0;
			PWM_duty_m2 = 14;
		}
		else if(mode_count_m2 == 1 && PWM_count_m2 == 0)
		{
			if(PWM_duty_m2<700)
			{
				PWM_count_m2 = 1;
				PWM_duty_m2 +=14;
			}
			else
			{
				mode_count_m2 = 0;
			}
		}
	}

	if(Motor_mode_m2 == 7)
	{
		if(mode_count_m2 == 0 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 3;
			mode_count_m2 = 1;
			set_frequency_m2 = 4000;
			frequency_m2 = 0;
			PWM_duty_m2 = 2000;
		}
		else if(mode_count_m2 == 1 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 0;
			set_frequency_m2 = 12500;
			frequency_m2 = 0;
			PWM_duty_m2 = 10000;
		}
	}

	if(Motor_mode_m2 == 8)
	{
		if(mode_count_m2 == 0 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 1;
			set_frequency_m2 = 6000;
			frequency_m2 = 0;
			PWM_duty_m2 = 5000;
		}
		else if(mode_count_m2 == 1 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 2;
			set_frequency_m2 = 11000;
			frequency_m2 = 0;
			PWM_duty_m2 = 10000;
		}
		else if(mode_count_m2 == 2 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 3;
			set_frequency_m2 = 16000;
			frequency_m2 = 0;
			PWM_duty_m2 = 15000;
		}
		else if(mode_count_m2 == 3 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 0;
			set_frequency_m2 = 21000;
			frequency_m2 = 0;
			PWM_duty_m2 = 20000;
		}
	}

	if(Motor_mode_m2 == 9)
	{
		if(mode_count_m2 == 0 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 40;
			mode_count_m2 = 1;
			set_frequency_m2 = 100;
			frequency_m2 = 0;
			PWM_duty_m2 = 60;
		}
		else if(mode_count_m2 == 1 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 2;
			set_frequency_m2 = 2000;
			frequency_m2 = 0;
			PWM_duty_m2 = 1;
		}
		else if(mode_count_m2 == 2 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 3;
			set_frequency_m2 = 4000;
			frequency_m2 = 0;
			PWM_duty_m2 = 4000;
		}
		else if(mode_count_m2 == 3 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 0;
			set_frequency_m2 = 2000;
			frequency_m2 = 0;
			PWM_duty_m2 = 1;
		}
	}

	if(Motor_mode_m2 == 10)
	{
		if(mode_count_m2 == 0 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 9;
			mode_count_m2 = 1;
			set_frequency_m2 = 4000;
			frequency_m2 = 0;
			PWM_duty_m2 = 2000;
		}
		else if(mode_count_m2 == 1 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 0;
			set_frequency_m2 = 17500;
			frequency_m2 = 0;
			PWM_duty_m2 = 15000;
		}
	}

	if(Motor_mode_m2 == 11)
	{
		if(mode_count_m2 == 0 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 30;
			mode_count_m2 = 1;
			set_frequency_m2 = 100;
			PWM_duty_m2 = 60;
		}
		else if(mode_count_m2 == 1 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 1;
			mode_count_m2 = 2;
			set_frequency_m2 = 3000;
			PWM_duty_m2 = 1;
		}
		else if(mode_count_m2 == 2 && PWM_count_m2 == 0)
		{
			PWM_count_m2 = 30;
			mode_count_m2 = 3;
			set_frequency_m2 = 100;
			PWM_duty_m2 = 60;
		}
		else if(mode_count_m2 == 3 && PWM_count_m2 == 0)
		{
			Motor_mode_m2 = 0;
		}
	}
}