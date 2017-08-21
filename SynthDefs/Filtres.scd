// ~gitSynthDefDir is set in startup.scd

(

ProxySynthDef(\volume, { |vol = 1|
	var bus = \out.kr;
	var in = In.ar(bus,2);
	//var sig = in * \vol.kr;
	ReplaceOut.ar(bus, in * vol);
}).store(dir: ~gitSynthDefDir);

ProxySynthDef(\lpf, { |lpf = 600|
	var bus = \out.kr;
	var in = In.ar(bus,2);
	var sig = LPF.ar(in, lpf);
	ReplaceOut.ar(bus, sig);
}).store(dir: ~gitSynthDefDir);


)
