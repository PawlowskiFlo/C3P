Class {
	#name : 'TestB',
	#superclass : 'TestCase',
	#category : 'week2-LOOKUP',
	#package : 'week2',
	#tag : 'LOOKUP'
}

{ #category : 'tests' }
TestB >> testBar [

	| aB |
	aB := B new. 
	self assert: aB bar equals: 10
]
