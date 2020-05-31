"
Super simple implementation of tagged halts.
Halts can be tagged with a symbol so that all halts with the same symbol can be (de)activated at once.

Example:
	self haltTag: #tag.
	self haltTag: #otherTag.
	
	Halt disable: #tag -> all halts tagged with #tag will be deactivated and no longer halt.
	Halt enable: #tag -> all halts tagged with #tag will be reactivated.
	TaggedHalt resetTags -> reactivate all halts
"
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
	self blackTags add: tag
]

{ #category : #tags }
TaggedHalt class >> enable: tag [
	self blackTags remove: tag ifAbsent: [  ]
]

{ #category : #halts }
TaggedHalt class >> haltTag: aSymbol [
	<debuggerCompleteToSender>
	(self blackTags includes: aSymbol)
		ifFalse: [ Halt now ]
]

{ #category : #initialization }
TaggedHalt class >> resetTags [
	<script>
	blackTags := nil
]
