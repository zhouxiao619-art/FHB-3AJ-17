extern bit BREATH_Switch;
extern byte BREATH_DUTY;
extern bit Add_sign;

extern byte BREATH_DUTY_temp;
extern word BREATH_time;
extern word LED_icnt_timer;
extern BYTE LED_icnt;
extern BYTE Lock_LED_Flag;

void Led_start(byte LED_Flag_Temp);
void Func_LED();
void BREATH_LIGHT_MOD();