Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'week2-DICE',
	#package : 'week2',
	#tag : 'DICE'
}

{ #category : ' tests' }
Die class >> withFaces: aNumber [
	"Create and initialize a new die with aNumber faces."

	^ self new faces: aNumber
]

{ #category : 'as yet unclassified' }
Die >> + aDicable [ 
	
	^ aDicable sumWithDie: self
]

{ #category : 'accessing' }
Die >> faces [ 
	^faces
]

{ #category : 'accessing' }
Die >> faces: newFaces [
	"set number of faces"
	
	faces := newFaces
]

{ #category : 'initialization' }
Die >> initialize [ 
	faces := 6
]

{ #category : 'printing' }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' (';
		print: faces;
		nextPutAll: ')'
]

{ #category : 'as yet unclassified' }
Die >> roll [
	"roll a die between one and aNumber"
	
	^ faces atRandom
	
]

{ #category : 'as yet unclassified' }
Die >> sumWithDie: aDie [ 

	^DieHandle new 
	addDie: self; 
	addDie: aDie; yourself
]

{ #category : 'as yet unclassified' }
Die >> sumWithHandle: aDieHandle [ 
	| handle |
	handle := DieHandle new. 
	aDieHandle dices do: [ :each | handle addDie: each ].
	handle addDie: self.
	^ handle
]
