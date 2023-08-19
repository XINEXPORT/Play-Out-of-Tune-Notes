//play out of tuned notes with an integer ending with ".0"

(
Pbind(
	\scale, Scale.dorian,
	\degree, Pwhite(0,7.0, inf),
	\dur, 0.2,
	\amp, 0.5
).trace.play;
)

(
Pbind(
	\scale, Scale.dorian,
	\degree, Prand([1,2,10,20,5],inf),
	\dur, Pwhite (0.2,0.7),
	\amp, Pseq ([0.5], inf),
).trace.play;
)

//patterns 3:46p

//Pser = cycling through the integers dealing with the individual items
//Pseq = cycling through the integers through all integers sequentially

(
Pbind(
	\degree, Pser ([0,2,3,4], inf),
	\dur, 0.2,
	\amp, 1,
).play;
)

//Pxrand, never repeats the same integer twice in arow
//Prand, randomzies integers but could also include sequential randomness
(
Pbind(
	\degree, Pxrand ([1,1,1,1], inf),
	\dur, 0.2,
	\amp, 1,
).play;
)

//pshuff, returns a shuffle integers with repeats, sequences, and random

(
Pbind(
	\degree, Pshuf ([0,11,2,13], inf),
	\dur, 0.2,
	\amp, 1,
).play;
)

//pslide, chooses a lengths or sections within the sequence to play
(
Pbind(
	\degree, Pslide ([2,3,4,4,3], inf,-1,0),
	\dur, 0.2,
	\amp, 1,
).play;
)

(
Pbind(
	\scale, Scale.dorian,
	\degree, 0,
	\dur, 1,
	\amp, 0.5
).play;
)

//db is closer to the range of listening than amp

(
Pbind(
\degree, Pseq([0, 1, 2, 3, 4, 3, 7, 11, 4, 2, 0, 3], 5),
	\dur, Pseq([0.2, 0.1, 0.1], inf),
\amp, Pseq([0.7, 0.5, 0.3, 0.2], inf),
\legato, 0.4
\db, Pwhite (0.1, 0.2);
).play;
)


(
Pbind(
	\freq, Pseq([260,289], inf),
	\degree, 1,
	\amp, Pwhite (0.2, 0.3),
	\legato,1
).play;
)

(
Pbind(
\degree, Pseq([0, 1, 2, 3, 4, 3, 7, 11, 4, 2, 0, 3], inf),
\dur, Pseq([0.2, 0.1, 0.1], inf),
\amp, Pwhite(0.7, 0.5, 0.3, 0.2),//this will take priority over degree pseq even though it's labeled infinite
\legato, 0.4

).play;
)

//pseries,

(
Pbind(
	\degree, Pn(Pseries (0,3,5), inf),
	\dur, 0.2,
	\amp, 1
).play;
)

// pgeom, frequency range from the lowest to highesr frequency
(
Pbind(
	\degree, Pseq([0, 1, 2, 3, 4, 3, 7, 11, 4, 2, 0, 3], inf),
	\freq, Pgeom (10,20,5),
	\dur, 0.2,
	\amp, 1
).play;
)
Pgeom(1,3,5).asStream.all;


// pn, sequences a series of notes within a sequence

(
Pbind(
	\note, Pseq ([
		3,
		Pn(-4,2,20,1),
		Pwhite ([45,55,2]),
		Pn(5,3,3),3],
	inf),
	\degree, Pn(Pseries (0,3,5), inf),
	\dur, 0.2,
	\amp, 1
).play;
)

//pstutter
(
Pbind(
	\freq, Pseq([20, Pwhite(444,666,1) inf),
	\dur, 0.2,
	\amp, 1
).trace.play;
)

//chords
(
Pbind(
	\midinote, Pseq([
		[38,3,10],
		[26,33,45],
		[10,12,23]

        ], inf),
	\dur, 0.3,
	\amp,  1
).play;
)



















