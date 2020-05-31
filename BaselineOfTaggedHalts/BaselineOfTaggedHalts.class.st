Class {
	#name : #BaselineOfTaggedHalts,
	#superclass : #BaselineOf,
	#category : #BaselineOfTaggedHalts
}

{ #category : #baselines }
BaselineOfTaggedHalts >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'TaggedHalts' ]
]
