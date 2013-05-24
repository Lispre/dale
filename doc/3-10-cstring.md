# Dale

## 3.10 cstring

### Details

Module: cstring  
File: cstring  

### Description

Bindings to `string.h`.











### Functions

#### `strcpy`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(dest (p char))`  
  * `(source (const (p char)))`  




#### `strncpy`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(dest (p char))`  
  * `(source (p char))`  
  * `(size size)`  




#### `strcat`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (const (p char)))`  




#### `strncat`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (p char))`  
  * `(size size)`  




#### `strcmp`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (p char))`  




#### `strncmp`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (p char))`  
  * `(n size)`  




#### `strchr`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(str (p char))`  
  * `(c int)`  




#### `strrchr`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(str (p char))`  
  * `(c int)`  




#### `strspn`

Linkage: `extern-c`  
Returns: `size`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (p char))`  




#### `strcspn`

Linkage: `extern-c`  
Returns: `size`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (p char))`  




#### `strpbrk`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (p char))`  




#### `strstr`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(str (const (p char)))`  
  * `(str2 (p char))`  




#### `strlen`

Linkage: `extern-c`  
Returns: `size`  
Parameters:  

  * `(str (const (p char)))`  




#### `strerror`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(n size)`  




#### `strtok`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(str (p char))`  
  * `(str2 (p char))`  




#### `memcpy`

Linkage: `extern-c`  
Returns: `(p void)`  
Parameters:  

  * `(str (p void))`  
  * `(str2 (p void))`  
  * `(n size)`  




#### `memmove`

Linkage: `extern-c`  
Returns: `(p void)`  
Parameters:  

  * `(str (p void))`  
  * `(str2 (p void))`  
  * `(n size)`  




#### `memcmp`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p void))`  
  * `(str2 (p void))`  
  * `(n size)`  




#### `memchr`

Linkage: `extern-c`  
Returns: `(p void)`  
Parameters:  

  * `(a (p void))`  
  * `(b int)`  
  * `(c size)`  




#### `memset`

Linkage: `extern-c`  
Returns: `(p void)`  
Parameters:  

  * `(a (p void))`  
  * `(b int)`  
  * `(c size)`  