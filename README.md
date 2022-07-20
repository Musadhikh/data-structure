# data-structure
Data structures with Swift

## Notes
### for value types, when copied, the memory address will be the same. when one of the object modified, then the memory address will be different
eg: 

let array1 = [1, 2]
var array2 = array1

### at this point array1 and array2 has same memory address

array2.append(3)

### array2 will now have a different memory address(since arrays are value type)
