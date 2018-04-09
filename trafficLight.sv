
module trafficLight( input logic clk,
                     input logic reset,
                     input logic a,b,
                     output logic La2, La1,La0,Lb2,Lb1,Lb0);

typedef enum logic [2:0]{S0,S1,S2,S3,S4,S5,S6,S7} statetype;
statetype [2:0] state, nextstate;


always_ff@(posedge clk, posedge reset)
if(reset)state <=S0;
else state <=nextstate;


always_comb
case (state)
S0: if (a) nextstate <= S0;
    else nextstate<= S1;
S1: nextstate<=S2;
S2: nextstate<=S3;
S3: nextstate<=S4;
S4: if (b) nextstate <= S4;
    else nextstate <= S5;
S5: nextstate <= S6;
S6: nextstate <= S7;
S7: nextstate <= S0; 
default: nextstate <= S0;
endcase
//output logic 
always_comb 
case (state)


S0:        //La=Green Lb: Red
begin
 La2=1;
 La1=1;
 La0=0;
 Lb2=1;
 Lb1=1;
 Lb0=1;
end 



S1:    //La=Yellow Lb: Red
begin 
La2=1;
La1=0;
La0=0;
Lb2=1;
Lb1=1;
Lb0=1;
end 

S2:   //La=Red Lb: Red
begin 
La2=1;
La1=1;
La0=1;
Lb2=1;
Lb1=1;
Lb0=1;
end 

S3:     //La=Red Lb: Yellow
begin 
La2=1;
La1=1;
La0=1;
Lb2=1;
Lb1=0;
Lb0=0;
end 

S4:         //La=Red Lb: Green
begin 
La2=1;
La1=1;
La0=1;
Lb2=1;
Lb1=1;
Lb0=0;
end 

S5:     //La=Red Lb: Yellow
begin 
La2=1;
La1=1;
La0=1;
Lb2=1;
Lb1=0;
Lb0=0;
end 

S6:   //La=Red Lb: Red
begin 
La2=1;
La1=1;
La0=1;
Lb2=1;
Lb1=1;
Lb0=1;
end 

S7:   //La=Yellow Lb: Red
begin 
La2=1;
La1=0;
La0=0;
Lb2=1;
Lb1=1;
Lb0=1;
end 
endcase
endmodule
