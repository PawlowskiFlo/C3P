Class {
	#name : 'TestD',
	#superclass : 'TestCase',
	#category : 'week2',
	#package : 'week2'
}

{ #category : 'tests' }
TestD >> testBar [ 
	| aD |
	aD := D new. 
	self assert: aD bar equals: 20
]
