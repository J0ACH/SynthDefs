// ~gitSynthDefDir is set in startup.scd

(

ProxySynthDef(\vol, { //|vol = 1, ft = 8|
	var bus = \out.kr;
	var in = In.ar(bus,2);

	//var fade = EnvGen.kr(Env([1,0], \fadeTime.kr(ft), \sin), );
	//var sig = in * \vol.kr;
	ReplaceOut.ar(bus, in * \vol.kr(1, \ft.kr(0)));
	// XOut.ar(bus, fade, in);
}).store(dir: ~gitSynthDefDir);

ProxySynthDef(\lpf, { |lpf = 600|
	var bus = \out.kr;
	var in = In.ar(bus,2);
	var sig = LPF.ar(in, lpf);
	ReplaceOut.ar(bus, sig);
}).store(dir: ~gitSynthDefDir);


)
