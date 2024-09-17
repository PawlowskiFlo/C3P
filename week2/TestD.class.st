Class {
	#name : 'TestD',
	#superclass : 'TestCase',
	#category : 'week2-LOOKUP',
	#package : 'week2',
	#tag : 'LOOKUP'
}

{ #category : 'tests' }
TestD >> testBar [ 
	| aD |
	aD := D new. 
	self assert: aD bar equals: 20
]
