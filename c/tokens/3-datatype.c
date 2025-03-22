// Data types in C define the type and size of data that can be stored in a variable. They specify the kind of value a variable can hold and the operations that can be performed on it. For example, int for integers, float for floating-point numbers, and char for characters.

// The primary categories of data types in C are:

// • Basic (or Primitive) Data Types: Includes int, char, float, and double.
// • Derived Data Types: Includes arrays, pointers, and functions.
// • Enumeration Data Types: Includes enum which allows for variables to be a set of named integer constants.
// • Void Data Type: Used for functions that do not return a value or to specify generic pointers.


// ▣ %c (character):

// • Corresponding Data Type: char
// • Size: 1 byte
// • Range: -128 to 127 (signed) or 0 to 255 (unsigned)

// ▣ %d (integer):

// • Corresponding Data Type: int
// • Size: 4 bytes
// • Range: -2,147,483,648 to 2,147,483,647

// ▣ %u (unsigned integer):

// • Corresponding Data Type: unsigned int
// • Size: 4 bytes
// • Range: 0 to 4,294,967,295

// ▣ %ld (long integer):

// • Corresponding Data Type: long int
// • Size: 4 bytes
// • Range: -2,147,483,648 to 2,147,483,647

// ▣ %lu (unsigned long integer):

// • Corresponding Data Type: unsigned long int
// • Size: 4 bytes
// • Range: 0 to 4,294,967,295

// ▣ %lld (long long integer):

// • Corresponding Data Type: long long int
// • Size: 8 bytes
// • Range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807

// ▣ %llu (unsigned long long integer):

// • Corresponding Data Type: unsigned long long int
// • Size: 8 bytes
// • Range: 0 to 18,446,744,073,709,551,615

// ▣ %f (float):

// • Corresponding Data Type: float
// • Size: 4 bytes
// • Range: Approximately 1.2E-38 to 3.4E+38 (6 decimal places of precision)

// ▣ %lf (double):

// • Corresponding Data Type: double
// • Size: 8 bytes
// • Range: Approximately 2.3E-308 to 1.7E+308 (15 decimal places of precision)

// ▣ %Lf (long double):

// • Corresponding Data Type: long double
// • Size: 10 bytes (on most platforms)
// • Range: Approximately 3.4E-4932 to 1.1E+4932 (19 decimal places of precision)

// ▣ %s (string):

// • Corresponding Data Type: char[] or char*
// • Size: Depends on the length of the string (variable)

// ▣ %p (pointer):

// • Corresponding Data Type: void*
// • Size: Depends on the system architecture (e.g., 4 bytes on 32-bit systems, 8 bytes on 64-bit systems)