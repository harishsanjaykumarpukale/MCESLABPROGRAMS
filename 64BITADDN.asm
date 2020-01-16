	AREA	RESET,	CODE
		ENTRY
		LDR R0,=VAL1
		LDR R1,=VAL2
		LDR R2,[R0]
		LDR R3,[R0,#4]
		LDR R4,[R1]
		LDR R5,[R1,#4]
		ADDS R7,R3,R5
		ADC R6,R2,R4
STOP B STOP
VAL1 DCD &12345678,&1234 ;can be any other numbers
VAL2 DCD &1234,&1234     ;can be any other numbers
	END
