# TaggedHalts
Experiment: grouping halts by tags to enable/disable them.
Halts can be tagged with a symbol so that all halts with the same symbol can be (de)activated at once.

## Installation
```Smalltalk
Metacello new
  baseline: 'TaggedHalts';
  repository: 'github://StevenCostiou/TaggedHalts';
  load.
 ```
 
## Example
Use `#haltTag: aSymbol` in your code. The tag identifies a family of halts.

```Smalltalk
self haltTag: #tag.
self haltTag: #otherTag.
```

Disable all halts tagged with `#tag`: those halts will be deactivated and no longer halt.
```Smalltalk
Halt disable: #tag
```

Enable all halts tagged with `#tag`: those halts will be activated halt normally.
```Smalltalk
Halt enable: #tag
```

Reactivate all halts at once:
```Smalltalk
TaggedHalt resetTags
```
