	AREA	RESET, CODE
		ENTRY
		LDR R0,=NUM
		LDR R1,[R0]
		MOV R2,#01
		
		CMP R1,#00
		BEQ EXIT
		
		BL FACT

EXIT
		MOV R0,#0X40000000
		STR R2,[R0]
STOP	B	STOP

FACT		
		MUL R3,R2,R1
		MOV R2,R3
		SUBS R1,#01
		BNE	FACT
		BX LR

NUM DCD &6
		END