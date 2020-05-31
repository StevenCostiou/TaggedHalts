Class {
	#name : #TaggedHalt,
	#superclass : #Object,
	#classInstVars : [
		'blackTags'
	],
	#category : #TaggedHalts
}

{ #category : #accessing }
TaggedHalt class >> blackTags [
	^ blackTags ifNil: [ blackTags := Set new ]
]

{ #category : #tags }
TaggedHalt class >> disable: tag [
	self blackTags remove: tag ifAbsent: [  ]
]

{ #category : #tags }
TaggedHalt class >> enable: tag [
	self blackTags add: tag
]
