BEGIN:
	LDI	3
	STA	7
	LDI	0
LOOP:
	ADD	7
	JC	BEGIN
	OUT
	JMP	LOOP
