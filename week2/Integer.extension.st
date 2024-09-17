Extension { #name : 'Integer' }

{ #category : '*week2' }
Integer >> D: anInt [

	| newHandle |
	newHandle := DieHandle new.
	self timesRepeat: [ newHandle addDie: (Die withFaces: anInt)].
	^ newHandle 	
]

{ #category : '*week2' }
Integer >> Dice20 [
	| newHandle |
	newHandle := DieHandle new.
	self timesRepeat: [ newHandle addDie: (Die withFaces: 20)].
	^ newHandle 
]
