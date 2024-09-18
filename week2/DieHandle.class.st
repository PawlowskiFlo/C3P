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

{ #category : 'as yet unclassified' }
DieHandle >> + aDicable [ 
	^ aDicable sumWithHandle: self
]

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

{ #category : 'as yet unclassified' }
DieHandle >> faces [ 
	^ dices sum: [ :each | each faces ].
	
]

{ #category : 'initialization' }
DieHandle >> initialize [ 
	dices := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
DieHandle >> roll [ 
	^ dices sum: [ :each | each roll ].
	
]

{ #category : 'as yet unclassified' }
DieHandle >> rollSimple [ 
	| counter |
	counter := 0.
	dices 
	do: [ :each | counter := (counter + each roll) ].
	^ counter
]

{ #category : 'as yet unclassified' }
DieHandle >> sumWithDie: aDie [ 
	| handle |
	handle := self class new. 
	self dices do: [ :each | handle addDie: each ].
	handle addDie: aDie. 
	^ handle
]

{ #category : 'as yet unclassified' }
DieHandle >> sumWithHandle: aDieHandle [ 
	| handle |
	handle := self class new. 
	self dices do: [ :each | handle addDie: each ].
	aDieHandle dices do: [ :each | handle addDie: each ].
	^ handle
]
