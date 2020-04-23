RubyVM::InstructionSequence.compile_option = {
  :tailcall_optimization => true,
  :trace_instruction => false
}

RubyVM::InstructionSequence.compile(<<EOS).eval

def rec(x)
  go(0, x)
end
def go(now, x)
  if x == 0
    now
  else
    go(now + x, x - 1)
  end
end

EOS

def stackOverFlow(x)
  if x == 0
    x
  else
    x + stackOverFlow(x - 1)
  end
end


rec(100000)

stackOverFlow(100000)
