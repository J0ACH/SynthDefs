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

a = SynthDescLib.global; // the global library of SynthDescs
x = a.synthDescs.at(\default); // get the default SynthDesc
x.controls.do { |ctl| [\name, ctl.name, \defaultValue, ctl.defaultValue].postln };"";


SynthDescLib.global.synthDescs.keysDo({|one| one.postln; })
SynthDescLib.global.synthDescs.at(\default)
SynthDescLib.global.synthDescs.at(\vol)
(
SynthDescLib.global.synthDescs.at(\vol).controls.do {|ctl|
	ctl.name.postln;
	ctl.lag.postln;
}
)

~aaa.busArg
~aaa.nodeMap
~aaa.objects
~aaa.objects.array[0]
~aaa.objects.array[0].controlNames