Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'week2-DICE',
	#package : 'week2',
	#tag : 'DICE'
}

{ #category : 'tests' }
DieTest >> testAddTwoDice [ 
	| hd |
	hd := (Die withFaces: 6) + (Die withFaces: 6).
	self assert: hd dices size equals: 2. 
]

{ #category : 'tests' }
DieTest >> testAddingADieAndHandle [
	| hd |
	hd := (Die withFaces: 6)
	 + 
		(DieHandle new 
		addDie: (Die withFaces: 10);
		yourself).
	self assert: hd dices size equals: 2. 
]

{ #category : 'tests' }
DieTest >> testCreationIsOk [ 
	
	self assert: (Die withFaces: 20) faces equals: 20
]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [ 

	self assert: Die new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testNumberOfFaces [
	| hd |
	hd := (DieHandle new
		addDie: (Die withFaces: 10);
		addDie: (Die withFaces: 6);
	yourself).
	self assert: hd faces equals: 16
]

{ #category : 'tests' }
DieTest >> testRolling [ 
	
	| d |
	d:= Die new. 
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
