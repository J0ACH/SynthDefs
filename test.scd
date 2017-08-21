p = ProxySpace.push(s)

~aaa.play(vol:1, fadeTime:8)
~aaa.fadeTime = 8

~aaa[0] = { SinOsc.ar(60!2, mul:1) }
~aaa[1] = \lpf
~aaa[2] = \volume

~aaa.set(\lpf, 460)
~aaa.set(\vol, 0.0, \ft, 8)

~aaa.free

~aaa.scope.view.alwaysOnTop_(true)

