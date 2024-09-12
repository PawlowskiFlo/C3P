Class {
	#name : 'TestC',
	#superclass : 'TestCase',
	#category : 'week2',
	#package : 'week2'
}

{ #category : 'tests' }
TestC >> testBar [ 
	| aC |
	aC := C new. 
	self assert: aC bar equals: 50
]
