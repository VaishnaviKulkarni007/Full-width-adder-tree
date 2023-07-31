# Full-width-adder-tree

* week1:
  DATA WIDTH- 8 inputs with 8 bit data width 

  Description: 
    In the first stage of the adder tree, consist of four two input adders ( 8 bit inputs) and provides output of 9 bits (carry). These four outputs are the inputs for stage     2 of the adder tree, where we use two adders (9bit input) to provide outputs of 10bits(carry) and finally this is summed in a 10 bit adder to provide a 11 bit output.        This design is the basis for DSP applications. 

  ![image](https://github.com/VaishnaviKulkarni007/Full-width-adder-tree/assets/92613979/62f2bbdb-b0ef-4540-9760-c8ccb477cd8a)

  * week2:
    DATA WIDTH- 8 inputs with 8 bit data width 

    Description: 
      Insert pipeline stages in the previous full width adder tree design in the regions indicated by the dotted lines. The data from the previous stage enters the next only         at the positive edge of the clock, when enable signal is high. The data also resets to zero if the reset signal is pulled high.

![image](https://github.com/VaishnaviKulkarni007/Full-width-adder-tree/assets/92613979/20bb97cc-7974-438c-902c-e35f10805800)

* week3:

  Description: 
    For the Pipelined Adder tree design, include a new approximator block AXA for the last 3 bits of the input’s LSB to design two different tree designs, each performing 
    (i) bitwise or operation in AXA block 
    (ii) bitwise xor operations in AXA block 
    as depicted in the diagram below.
  ![image](https://github.com/VaishnaviKulkarni007/Full-width-adder-tree/assets/92613979/dd652a5c-5dce-4592-9e79-df4d16dda2c2)

  For example, given two inputs X and Y in the adder tree, The AXA block for bitwise or is depicted in red as follows, while normal addition operation is performed in the 
  blue box.

  ![image](https://github.com/VaishnaviKulkarni007/Full-width-adder-tree/assets/92613979/7fc1e0a9-e57b-4e86-9954-d900801fdc08)

* week4:

  Perform Approximation D1 and D2 for the Pipelined Adder tree design
  ![image](https://github.com/VaishnaviKulkarni007/Full-width-adder-tree/assets/92613979/ff14728e-07d8-4247-a771-d01554f2588c)

  ![image](https://github.com/VaishnaviKulkarni007/Full-width-adder-tree/assets/92613979/47ea0691-f82d-4b92-a626-6e9db5f05380)

  ![image](https://github.com/VaishnaviKulkarni007/Full-width-adder-tree/assets/92613979/ec16548b-f7b5-4171-995a-205b26a4b766)



 


  


  

