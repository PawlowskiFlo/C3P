Class {
	#name : 'TestA',
	#superclass : 'TestCase',
	#category : 'week2',
	#package : 'week2'
}

{ #category : 'tests' }
TestA >> testBar [
	| aA | 
	aA := A new. 
	self assert: aA bar equals: 10

]
