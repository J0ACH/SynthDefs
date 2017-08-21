// add lines bellow to SC startup file a set "dir" to Git folder

(
var dir = "D:/GitHub/SynthDefs/DefLibrary/";
var files = "*.scsyndef";
var path = dir ++ files;

"\nStartupFile modification:".postln;
"SynthDef loaded from directory: %".format(dir).postln;

path.pathMatch.do { |filename|
	var oneFile = PathName(filename).fileNameWithoutExtension;
	"\t- %".format(oneFile).postln;
};

~gitSynthDefDir = dir;
SynthDescLib.global.read(path)
)
