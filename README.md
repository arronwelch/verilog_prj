# Verilog HDL Basics

Basic Concepts:
- **HDL**(_Hardware Description Language_)
- **IC**(_Integrated Circuit_)
- **MPU**(_Micro Processor Unit_)
- **MCU**(_Micro Control Unit_)
- **ASIC**(_Application-SpecificIC_)
- **CPU**(_Central Processing Unit_)
- **DSP**(_Digital SignalProcessing_)
- Foundry
- **IP**(_Intellectual Properties_)
- Fabless
- IEEE 1364

### Lexical Conventions:
1. Whitespace
    - blank spaces(\b)
    - tabs(\t)
    - newlines(\n)
2. Comments
    - one-line comment starts with "//",skips from that point to the end of line
    - a multiple-line comment starts with "/*" and ends with "*/"
3. Operators
    - unary
    - binary
    - ternary
4. Number Specification:      
    - Sized numbers(\<size\>\'\<base format\>\<number\>):      
        - decimal('d or 'D)
        - hexadecimal('h or 'H)
        - binary('b or 'B)
        - octal('o or 'O)
        > 4'b1111 // This is a 4-bit  binary number  
        > 12'habc // This is a 12-bit hexadecimal   number   
        > 16'd255 // This is a 16-bit decimal number.  
    - Unsigned numbers
        - without a \<_base format_\>,default decimal
        - without a \<_size_\>,default must be at least 32
    - **X** or **Z** values
        - **X** : unknown
        - **Z** : high impedance values
    - Negative numbers
        > -6'd3 // 8-bit negative number stored as 2's complement of 3  
        > 4'd-2 // Illegal specification
    - Underscore characters and question marks
        - improve readability of numbers and are ignored by Verilog  
        - A question mark "**?**" is the Verilog HDL alternative for **z** in the context of numbers.
        > 12'b1111_0000_1010 // Use of underline characters for readability  
        > 4'b10?? //Equivalent of a 4'b10zz
5. Strings  
    A string is a sequence of characters that are enclosed by double quotes.
    > "Hello Verilog World" // is a string  
    > "a / b" // is a string

6. Identifiers and Keywords  
    - Keywords are special identifiers reserved to define the language constructs.  
    - Keywords are in lowercase.
    - Identifiers are names given to objects so that they can be referenced in the design.
    - Identifiers are made up of alphanumeric characters,the underscore(_) and the dollar sign($) and are case sensitive.
    - Identifiers start with an alphabetic character or an underscore.
    - They cannot start with a number or a $ sign.
    > reg value; // reg is a keyword; value is an identifier  
    > input clk; // input is a keyword;clk is an identifier
7. Escaped Identifiers  
    _Escaped Identifiers_ begin with the backslash(\) charater and end with whitespace(space,tab,or newline).

### Data Types:
1. Value Set  
    - four values
    - eight strengths
    - Value Level Condition in Hardware Circuits  
        - 0                 Logic zero,false condition  
        - 1                 Logic one,true condition  
        - x                 Unknown value  
        - z                 High impedance,floating state  
    - Strength Level Type Degree
        - supply Driving (strongest)
        - strong Driving 
        - pull   Driving 
        - large  Storage  
        - weak   Driving  
        - medium Storage  
        - small  Storage  
        - highz  High Impedance (weakest)
    > If two signals of unequal strengths are driven on a wire,the stronger signal prevails.For example,if two signals of strength **strong1** and **weak0** contend,the result is resolved as a **strong1**.  
    > If two signals of strength **strong1** and **strong0** conflict,the result is unknown(**x**).
2. Nets  
    Nets represent connections between hardware elements.
    > wire a; // Declare net a for the above circuit
    > wire b,c; // Declare two wires b,c for the above circuit
    > wire d = 1'b0; // Net **d** is fixed to logic value 0 at declaration.   
    
    Note that net is not a keyword but represents a class of data types such as **wire**,**wand**,**wor**,**tri**,**triand**,**trior**,**trireg**,etc.The **wire** declaration is used most frequently.
3. Registers  
    _Registers_ represent data storage elements.Registers retain value until another value is placed onto them. Do not confuse the term _registers_ in Verilog with hardware registers built from edge-triggered flip-flops in real circuits.
    - Register data types are commonly declared by the keyword **reg**





