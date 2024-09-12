Class {
	#name : 'TestE',
	#superclass : 'TestCase',
	#category : 'week2',
	#package : 'week2'
}

{ #category : 'tests' }
TestE >> testBar [ 
	| aE |
	aE := E new. 
	self assert: aE bar equals: 100 
]
