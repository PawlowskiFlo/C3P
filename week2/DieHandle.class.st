Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dices'
	],
	#category : 'week2-DICE',
	#package : 'week2',
	#tag : 'DICE'
}

{ #category : 'initialization' }
DieHandle >> addDie: aDie [ 
	dices add: aDie
]

{ #category : 'initialization' }
DieHandle >> diceNumber [ 
	" return the number of dices in dices"
	
	^ dices size
]

{ #category : 'initialization' }
DieHandle >> dices [ 
	" return number of dices"
	
	^ dices
]

{ #category : 'initialization' }
DieHandle >> dices: anOrderedCollection [
	" set an ordered collection of dices"
	
	dices := anOrderedCollection
]

{ #category : 'initialization' }
DieHandle >> initialize [ 
	dices := OrderedCollection new.
]
