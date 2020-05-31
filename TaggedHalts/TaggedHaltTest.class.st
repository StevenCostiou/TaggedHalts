Class {
	#name : #TaggedHaltTest,
	#superclass : #TestCase,
	#category : #TaggedHalts
}

{ #category : #tests }
TaggedHaltTest >> testDisableEnableHaltTag [
	Halt disable: #tag.
	self shouldnt: [ self haltTag: #tag ] raise: Halt.
	self assertCollection: TaggedHalt blackTags includesAll: #(#tag).
	Halt enable: #tag.
	self should: [ self haltTag: #tag ] raise: Halt.
	self denyCollection: TaggedHalt blackTags includesAll: #(#tag)
]

{ #category : #tests }
TaggedHaltTest >> testDisableHaltTag [
	Halt disable: #tag.
	self assertCollection: TaggedHalt blackTags includesAll: #(#tag).
	self shouldnt: [ self haltTag: #tag ] raise: Halt.
	self should: [ self haltTag: #otherTag ] raise: Halt
]

{ #category : #tests }
TaggedHaltTest >> testEnableHaltTag [
	Halt enable: #tag.
	self should: [ self haltTag: #tag ] raise: Halt.
	self denyCollection: TaggedHalt blackTags includesAll: #(#tag)
]

{ #category : #tests }
TaggedHaltTest >> testHaltWithTag [
	self should: [ self haltTag: #tag ] raise: Halt
]
