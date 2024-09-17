Class {
	#name : 'TestE',
	#superclass : 'TestCase',
	#category : 'week2-LOOKUP',
	#package : 'week2',
	#tag : 'LOOKUP'
}

{ #category : 'tests' }
TestE >> testBar [ 
	| aE |
	aE := E new. 
	self assert: aE bar equals: 100 
]
