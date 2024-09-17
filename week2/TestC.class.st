Class {
	#name : 'TestC',
	#superclass : 'TestCase',
	#category : 'week2-LOOKUP',
	#package : 'week2',
	#tag : 'LOOKUP'
}

{ #category : 'tests' }
TestC >> testBar [ 
	| aC |
	aC := C new. 
	self assert: aC bar equals: 50
]
