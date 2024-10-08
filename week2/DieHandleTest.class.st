Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'week2-DICE',
	#package : 'week2',
	#tag : 'DICE'
}

{ #category : 'tests' }
DieHandleTest >> testAddingAnHandleWithADie [ 
	| handle res|
	handle := DieHandle new 
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	res := handle + (Die withFaces: 20).
	self assert: res diceNumber equals: 3
]

{ #category : 'tests' }
DieHandleTest >> testAddingTwiceTheSameDice [ 
	
	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1. 
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2. 
]

{ #category : 'tests' }
DieHandleTest >> testCreationAdding [ 
	
	| handle |
	handle := DieHandle new 
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself. 
	self assert: handle diceNumber equals: 2. 
]

{ #category : 'tests' }
DieHandleTest >> testRolling [ 
	
	| d |
	d:= DieHandle new. 
	d addDie: (Die withFaces: 6).
	d addDie: (Die withFaces: 6).
	10 timesRepeat: [ self assert: (d roll between: 2 and: 12) ]
]

{ #category : 'tests' }
DieHandleTest >> testSimpleHandle [ 

	self assert: 2 Dice20 diceNumber equals:2.
]

{ #category : 'tests' }
DieHandleTest >> testSumOfHandles [ 

	| hd1 hd2 hd3 |
	hd1 := DieHandle new 
		addDie: (Die withFaces: 20);
		addDie: (Die withFaces: 20); yourself. 
	hd2 := DieHandle new 
		addDie: (Die withFaces: 10);
		addDie: (Die withFaces: 10); yourself. 
	hd3 := hd1 + hd2. 
	self assert: hd3 diceNumber equals: 4.
		
]

{ #category : 'tests' }
DieHandleTest >> testSumming [ 
	| handle |
	handle := 2 Dice20 + (3 D:10).
	self assert: handle diceNumber equals: 5. 
]
