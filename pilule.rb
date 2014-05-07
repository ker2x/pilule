#!/usr/bin/env ruby

require 'readline'

module Pilule
  
  def self.eval(code)
    #message = Message.parse(code)
    #message.call(Lobby) if message
  end

  def self.load(file)
    eval File.read(File.join(File.dirname(__FILE__), file))
  end

  load "test/test.pil"
  
end