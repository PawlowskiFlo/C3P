Class {
	#name : 'TestA',
	#superclass : 'TestCase',
	#category : 'week2-LOOKUP',
	#package : 'week2',
	#tag : 'LOOKUP'
}

{ #category : 'tests' }
TestA >> testBar [
	| aA | 
	aA := A new. 
	self assert: aA bar equals: 10

]
