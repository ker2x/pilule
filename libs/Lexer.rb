
# line 1 "Lexer.rl"
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



# line 50 "Lexer.rl"



# line 33 "Lexer.rb"
class << self
	attr_accessor :_plexer_actions
	private :_plexer_actions, :_plexer_actions=
end
self._plexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7
]

class << self
	attr_accessor :_plexer_key_offsets
	private :_plexer_key_offsets, :_plexer_key_offsets=
end
self._plexer_key_offsets = [
	0, 0, 2, 4, 15, 18, 19
]

class << self
	attr_accessor :_plexer_trans_keys
	private :_plexer_trans_keys, :_plexer_trans_keys=
end
self._plexer_trans_keys = [
	48, 57, 48, 57, 32, 43, 45, 9, 
	13, 48, 57, 65, 90, 97, 122, 46, 
	48, 57, 46, 58, 95, 48, 57, 65, 
	90, 97, 122, 0
]

class << self
	attr_accessor :_plexer_single_lengths
	private :_plexer_single_lengths, :_plexer_single_lengths=
end
self._plexer_single_lengths = [
	0, 0, 0, 3, 1, 1, 2
]

class << self
	attr_accessor :_plexer_range_lengths
	private :_plexer_range_lengths, :_plexer_range_lengths=
end
self._plexer_range_lengths = [
	0, 1, 1, 4, 1, 0, 3
]

class << self
	attr_accessor :_plexer_index_offsets
	private :_plexer_index_offsets, :_plexer_index_offsets=
end
self._plexer_index_offsets = [
	0, 0, 2, 4, 12, 15, 17
]

class << self
	attr_accessor :_plexer_indicies
	private :_plexer_indicies, :_plexer_indicies=
end
self._plexer_indicies = [
	0, 1, 3, 2, 4, 5, 5, 4, 
	0, 6, 6, 1, 8, 0, 7, 8, 
	7, 10, 6, 6, 6, 6, 9, 0
]

class << self
	attr_accessor :_plexer_trans_targs
	private :_plexer_trans_targs, :_plexer_trans_targs=
end
self._plexer_trans_targs = [
	4, 0, 3, 5, 3, 1, 6, 3, 
	2, 3, 3
]

class << self
	attr_accessor :_plexer_trans_actions
	private :_plexer_trans_actions, :_plexer_trans_actions=
end
self._plexer_trans_actions = [
	5, 0, 15, 5, 9, 0, 0, 11, 
	0, 13, 7
]

class << self
	attr_accessor :_plexer_to_state_actions
	private :_plexer_to_state_actions, :_plexer_to_state_actions=
end
self._plexer_to_state_actions = [
	0, 0, 0, 1, 0, 0, 0
]

class << self
	attr_accessor :_plexer_from_state_actions
	private :_plexer_from_state_actions, :_plexer_from_state_actions=
end
self._plexer_from_state_actions = [
	0, 0, 0, 3, 0, 0, 0
]

class << self
	attr_accessor :_plexer_eof_trans
	private :_plexer_eof_trans, :_plexer_eof_trans=
end
self._plexer_eof_trans = [
	0, 0, 3, 0, 8, 8, 10
]

class << self
	attr_accessor :plexer_start
end
self.plexer_start = 3;
class << self
	attr_accessor :plexer_first_final
end
self.plexer_first_final = 3;
class << self
	attr_accessor :plexer_error
end
self.plexer_error = 0;

class << self
	attr_accessor :plexer_en_main
end
self.plexer_en_main = 3;


# line 53 "Lexer.rl"

def emit(token_name, data, target_array, ts, te)
	target_array << {:name => token_name.to_sym, :value => data[ts..te].pack("c*") }
end

def run_lexer(data)
	data = data.unpack("c*") if(data.is_a?(String))
	eof = data.length
	token_array = []
	
	
# line 170 "Lexer.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = plexer_start
	ts = nil
	te = nil
	act = 0
end

# line 64 "Lexer.rl"
	
# line 182 "Lexer.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_acts = _plexer_from_state_actions[cs]
	_nacts = _plexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _plexer_actions[_acts - 1]
			when 1 then
# line 1 "NONE"
		begin
ts = p
		end
# line 216 "Lexer.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _plexer_key_offsets[cs]
	_trans = _plexer_index_offsets[cs]
	_klen = _plexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _plexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _plexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _plexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _plexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _plexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _plexer_indicies[_trans]
	end
	if _goto_level <= _eof_trans
	cs = _plexer_trans_targs[_trans]
	if _plexer_trans_actions[_trans] != 0
		_acts = _plexer_trans_actions[_trans]
		_nacts = _plexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _plexer_actions[_acts - 1]
when 2 then
# line 1 "NONE"
		begin
te = p+1
		end
when 3 then
# line 42 "Lexer.rl"
		begin
te = p+1
 begin  
			emit(:LABEL, data, token_array, ts, te)
		 end
		end
when 4 then
# line 46 "Lexer.rl"
		begin
te = p+1
		end
when 5 then
# line 34 "Lexer.rl"
		begin
te = p
p = p - 1; begin 
			emit(:NUMBER, data, token_array, ts, te)
		 end
		end
when 6 then
# line 38 "Lexer.rl"
		begin
te = p
p = p - 1; begin  
			emit(:IDENTIFIER, data, token_array, ts, te)
		 end
		end
when 7 then
# line 34 "Lexer.rl"
		begin
 begin p = ((te))-1; end
 begin 
			emit(:NUMBER, data, token_array, ts, te)
		 end
		end
# line 325 "Lexer.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _plexer_to_state_actions[cs]
	_nacts = _plexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _plexer_actions[_acts - 1]
when 0 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 345 "Lexer.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _plexer_eof_trans[cs] > 0
		_trans = _plexer_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 65 "Lexer.rl"
	
	puts token_array.inspect
end

run_lexer("toto bibi: t1_a1a 100 101.1 -200 -200.1 a a_ a_b")	