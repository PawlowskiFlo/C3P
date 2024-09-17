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

{ #category : 'as yet unclassified' }
Die >> roll [
	"roll a die between one and aNumber"
	
	^ faces atRandom
	
]
