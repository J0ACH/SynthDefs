// ~gitSynthDefDir is set in startup.scd

(
SynthDef(\exampleDef, {
	Out.ar(0, SinOsc.ar(60!2, mul:0.2));
}).store(dir: ~gitSynthDefDir)
)
