# 1A

## S = A<sup>3</sup> + B<sup>3</sup> +C<sup>3</sup> 
```ASSEMBLY
	AREA	RESET, CODE
		ENTRY
		
		MOV R1,#2
		MOV R2,#3
		MOV R3,#4
		MUL R4,R1,R1 ;MUL R1 , R2 , R3 - Multiply R1 <- R2 x R3
		MUL R0,R4,R1
		MUL R4,R2,R2
		MLA R0,R4,R2,R0
		MUL R4,R3,R3
		MLA R0,R4,R3,R0
STOP B STOP
		END
		
```

## A = B+C-D

```ASSEMBLY
	AREA	RESET, CODE
		ENTRY
		
		MOV R1,#4 ;RANDOM VALUES
		MOV R2,#5
		MOV R3,#2
		
		ADD R0,R1,R2
		SUB R0,R0,R3
STOP B STOP
		END
```


## A = 2* A + B

```ASSEMBLY
	AREA	RESET, CODE
		ENTRY
		
		MOV R0,#4
		MOV R1,#5
		
		LSL R0,#1 ;MULTIPLYING BY 2 = LEFT SHIFTING BY 1
		ADD R0,R0,R1
STOP B STOP
		END
```


## S = 3X + 4Y + 9Z, where X = 2, Y=3 and Z=4

```ASSEMBLY
	AREA	RESET, CODE
		ENTRY
		
		MOV R1,#2
		MOV R2,#3
		MOV R3,#4
		ADD R0,R1,R1,LSL #1 ; 
		ADD R0,R0,R2,LSL #2
		ADD R3,R3,R3,LSL #3 
		ADD R0,R3
STOP B STOP
		END
```
### OR
### USING MUL R1 , R2 , R3 - Multiply R1 <- R2 x R3
### MLA R4 , R3 , R2 , R1 - Multiply and Accumulate; R4 <- (R3 x R2) + R1

```ASSEMBLY
	AREA	RESET, CODE
		ENTRY
		
		MOV R1,#2
		MOV R2,#3
		MOV R3,#4
		MOV R4,#3
		MOV R5,#4
		MOV R6,#9
		MUL R0,R1,R4 
		MLA R0,R2,R5,R0
		MLA R0,R3,R6,R0
STOP B STOP
		END
```
