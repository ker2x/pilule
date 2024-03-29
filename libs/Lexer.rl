# Lexer.rl
#
# list of opcode
# NOP : do nothing
# PUSH : ?
# POP : discard the top value on the stack
# DUP : duplicate value on top of the stack
# SWAP : swap the top 2 word on the stack
# ADD : add 2 numbers
# SUB : sub 2 numbers
# MUL : mul 1 numbers
# MOD : modulo of 2 numbers
# DIV : div 2 numbers
# ABS : absolute value of a number
# NEG : negate a number
# AND
# OR
# XOR
# N2S : number to string
# S2N : string to number
# CMP : compare 2 numbers
# 


%%{

	machine plexer;
	
	identifier = alpha+(alnum|'_')*;
	number = ('+'|'-')?digit+('.'digit)*;
	label = identifier':';
	
	main := |*
		number => {
			emit(:NUMBER, data, token_array, ts, te)
		};
		
		identifier => { 
			emit(:IDENTIFIER, data, token_array, ts, te)
		};

		label => { 
			emit(:LABEL, data, token_array, ts, te)
		};
		
		space;
		
	*|;
	
}%%

%% write data;

def emit(token_name, data, target_array, ts, te)
	target_array << {:name => token_name.to_sym, :value => data[ts..te].pack("c*") }
end

def run_lexer(data)
	data = data.unpack("c*") if(data.is_a?(String))
	eof = data.length
	token_array = []
	
	%% write init;
	%% write exec;
	
	puts token_array.inspect
end

run_lexer("toto bibi: t1_a1a 100 101.1 -200 -200.1 a a_ a_b")	