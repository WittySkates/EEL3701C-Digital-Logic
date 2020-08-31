library ieee; use ieee.std_logic_1164.all;
entity CONTROLLER is port (
		IR1, IR0, Q0: in std_logic;
		MSA1, MSA0: out std_logic;
		MSB1, MSB0: out std_logic;
		MSC2, MSC1, MSC0, IRLD, D0: out std_logic
);
end CONTROLLER;
architecture logic OF CONTROLLER IS
begin

--D0 = /Q0
D0 <= (NOT Q0);

--MSA1 = (Q0*IR1*/IR0)+(Q0*IR1*IR0)
MSA1 <= (Q0 AND IR1 AND (NOT IR0))
		OR(Q0 AND IR1 AND IR0);
		
--MSA0 = (/Q0 + IR1 OR IR0)
MSA0 <= ((NOT Q0) OR IR1 OR IR0);

--MSB1 = (/Q0 + IR1 + /IR0)
MSB1 <= ((NOT Q0) OR IR1 OR (NOT IR0));

--MSB0 = (Q0*/IR1*IR0)
MSB0 <= (Q0 AND (NOT IR1) AND IR0);

--MSC2 = (Q0*IR1*/IR0)+(Q0*IR1*IR0)
MSC2 <= (Q0 AND IR1 AND (NOT IR0))
		OR(Q0 AND IR1 AND IR0);

--MSC1 = (Q0*IR1*/IR0)
MSC1 <= (Q0 AND IR1 AND (NOT IR0));

--MSC0 = (Q0*IR1*/IR0)+(Q0*IR1*IR0)
MSC0 <= (Q0 AND IR1 AND (NOT IR0))
		OR(Q0 AND IR1 AND IR0);
		
--IRLD = (/Q0)
IRLD <= (NOT Q0);

end logic;