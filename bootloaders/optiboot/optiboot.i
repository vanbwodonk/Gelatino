# 1 "optiboot.c"
# 1 "/home/drw/Software/builder/Gelatino/bootloaders/optiboot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "optiboot.c"
# 239 "optiboot.c"
unsigned const int __attribute__((section(".version")))
optiboot_version = 256*(6 + 0) + 2;


# 1 "/usr/lib/avr/include/inttypes.h" 1 3
# 37 "/usr/lib/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 3 4
# 1 "/usr/lib/avr/include/stdint.h" 1 3 4
# 121 "/usr/lib/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/usr/lib/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/usr/lib/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 2 3 4
# 38 "/usr/lib/avr/include/inttypes.h" 2 3
# 77 "/usr/lib/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 244 "optiboot.c" 2
# 1 "/usr/lib/avr/include/avr/io.h" 1 3
# 99 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/sfr_defs.h" 1 3
# 100 "/usr/lib/avr/include/avr/io.h" 2 3
# 162 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/iom1284p.h" 1 3
# 163 "/usr/lib/avr/include/avr/io.h" 2 3
# 627 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/portpins.h" 1 3
# 628 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/common.h" 1 3
# 630 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/version.h" 1 3
# 632 "/usr/lib/avr/include/avr/io.h" 2 3






# 1 "/usr/lib/avr/include/avr/fuse.h" 1 3
# 239 "/usr/lib/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "/usr/lib/avr/include/avr/io.h" 2 3


# 1 "/usr/lib/avr/include/avr/lock.h" 1 3
# 642 "/usr/lib/avr/include/avr/io.h" 2 3
# 245 "optiboot.c" 2
# 1 "/usr/lib/avr/include/avr/pgmspace.h" 1 3
# 87 "/usr/lib/avr/include/avr/pgmspace.h" 3
# 1 "/usr/lib/gcc/avr/4.9.2/include/stddef.h" 1 3 4
# 212 "/usr/lib/gcc/avr/4.9.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 88 "/usr/lib/avr/include/avr/pgmspace.h" 2 3
# 1137 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));


__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 246 "optiboot.c" 2
# 1 "/usr/lib/avr/include/avr/eeprom.h" 1 3
# 50 "/usr/lib/avr/include/avr/eeprom.h" 3
# 1 "/usr/lib/gcc/avr/4.9.2/include/stddef.h" 1 3 4
# 147 "/usr/lib/gcc/avr/4.9.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 324 "/usr/lib/gcc/avr/4.9.2/include/stddef.h" 3 4
typedef int wchar_t;
# 51 "/usr/lib/avr/include/avr/eeprom.h" 2 3
# 137 "/usr/lib/avr/include/avr/eeprom.h" 3
uint8_t eeprom_read_byte (const uint8_t *__p) __attribute__((__pure__));




uint16_t eeprom_read_word (const uint16_t *__p) __attribute__((__pure__));




uint32_t eeprom_read_dword (const uint32_t *__p) __attribute__((__pure__));




float eeprom_read_float (const float *__p) __attribute__((__pure__));





void eeprom_read_block (void *__dst, const void *__src, size_t __n);





void eeprom_write_byte (uint8_t *__p, uint8_t __value);




void eeprom_write_word (uint16_t *__p, uint16_t __value);




void eeprom_write_dword (uint32_t *__p, uint32_t __value);




void eeprom_write_float (float *__p, float __value);





void eeprom_write_block (const void *__src, void *__dst, size_t __n);





void eeprom_update_byte (uint8_t *__p, uint8_t __value);




void eeprom_update_word (uint16_t *__p, uint16_t __value);




void eeprom_update_dword (uint32_t *__p, uint32_t __value);




void eeprom_update_float (float *__p, float __value);





void eeprom_update_block (const void *__src, void *__dst, size_t __n);
# 247 "optiboot.c" 2






# 1 "boot.h" 1
# 118 "boot.h"
# 1 "/usr/lib/gcc/avr/4.9.2/include-fixed/limits.h" 1 3 4
# 119 "boot.h" 2
# 254 "optiboot.c" 2
# 263 "optiboot.c"
# 1 "pin_defs.h" 1
# 264 "optiboot.c" 2




# 1 "stk500.h" 1
# 269 "optiboot.c" 2
# 335 "optiboot.c"
typedef uint16_t pagelen_t ;
# 350 "optiboot.c"
int main(void) __attribute__ ((OS_main)) __attribute__ ((section (".init9")));

void __attribute__((noinline)) putch(char);
uint8_t __attribute__((noinline)) getch(void);
void __attribute__((noinline)) verifySpace();
void __attribute__((noinline)) watchdogConfig(uint8_t x);

static inline void getNch(uint8_t);
static inline void flash_led(uint8_t);
static inline void watchdogReset();
static inline void writebuffer(int8_t memtype, uint8_t *mybuff,
          uint16_t address, pagelen_t len);
static inline void read_mem(uint8_t memtype,
       uint16_t address, pagelen_t len);




void appStart(uint8_t rstFlags) __attribute__ ((naked));
# 441 "optiboot.c"
int main(void) {
  uint8_t ch;







  register uint16_t address = 0;
  register pagelen_t length;
# 462 "optiboot.c"
  asm volatile ("clr __zero_reg__");
# 477 "optiboot.c"
  ch = (*(volatile uint8_t *)((0x34) + 0x20));
  (*(volatile uint8_t *)((0x34) + 0x20)) = 0;

  if (ch & ((1 << (3)) | (1 << (2)) | (1 << (0))))
      appStart(ch);



  (*(volatile uint8_t *)(0x81)) = (1 << (2)) | (1 << (0));
# 495 "optiboot.c"
  (*(volatile uint8_t *)(0xC0)) = (1 << (1));
  (*(volatile uint8_t *)(0xC1)) = (1 << (4)) | (1 << (3));
  (*(volatile uint8_t *)(0xC2)) = (1 << (1)) | (1 << (2));
  (*(volatile uint8_t *)(0xC4)) = (uint8_t)( (12000000L + 115200 * 4L) / (115200 * 8L) - 1 );




  watchdogConfig(((1 << (2)) | (1 << (1)) | (1 << (3))));



  (*(volatile uint8_t *)((0x04) + 0x20)) |= (1 << (0));
# 517 "optiboot.c"
  flash_led(3 * 2);



  for (;;) {

    ch = getch();

    if(ch == 0x41) {
      unsigned char which = getch();
      verifySpace();




      if (which == 0x82) {
   putch(optiboot_version & 0xFF);
      } else if (which == 0x81) {
   putch(optiboot_version >> 8);
      } else {




 putch(0x03);
      }
    }
    else if(ch == 0x42) {

      getNch(20);
    }
    else if(ch == 0x45) {

      getNch(5);
    }
    else if(ch == 0x55) {

      uint16_t newAddress;
      newAddress = getch();
      newAddress = (newAddress & 0xff) | (getch() << 8);


      (*(volatile uint8_t *)((0x3B) + 0x20)) = (newAddress & 0x8000) ? 1 : 0;

      newAddress += newAddress;
      address = newAddress;
      verifySpace();
    }
    else if(ch == 0x56) {

      getNch(4);
      putch(0x00);
    }

    else if(ch == 0x64) {

      uint8_t desttype;
      uint8_t *bufPtr;
      pagelen_t savelength;

      length = getch()<<8; length |= getch();
      savelength = length;
      desttype = getch();


      bufPtr = ((uint8_t*)((0x100)));
      do *bufPtr++ = getch();
      while (--length);


      verifySpace();
# 644 "optiboot.c"
      writebuffer(desttype, ((uint8_t*)((0x100))), address, savelength);


    }

    else if(ch == 0x74) {
      uint8_t desttype;
      length = getch()<<8; length |= getch();

      desttype = getch();

      verifySpace();

      read_mem(desttype, address, length);
    }


    else if(ch == 0x75) {

      verifySpace();
      putch(0x1E);
      putch(0x97);
      putch(0x05);
    }
    else if (ch == 0x51) {

      watchdogConfig(((1 << (3))));
      verifySpace();
    }
    else {

      verifySpace();
    }
    putch(0x10);
  }
}

void putch(char ch) {

  while (!((*(volatile uint8_t *)(0xC0)) & (1 << (5))));
  (*(volatile uint8_t *)(0xC6)) = ch;
# 709 "optiboot.c"
}

uint8_t getch(void) {
  uint8_t ch;
# 748 "optiboot.c"
  while(!((*(volatile uint8_t *)(0xC0)) & (1 << (7))))
    ;
  if (!((*(volatile uint8_t *)(0xC0)) & (1 << (4)))) {
# 759 "optiboot.c"
    watchdogReset();
  }

  ch = (*(volatile uint8_t *)(0xC6));
# 773 "optiboot.c"
  return ch;
}
# 795 "optiboot.c"
void getNch(uint8_t count) {
  do getch(); while (--count);
  verifySpace();
}

void verifySpace() {
  if (getch() != 0x20) {
    watchdogConfig(((1 << (3))));
    while (1)
      ;
  }
  putch(0x14);
}


void flash_led(uint8_t count) {
  do {
    (*(volatile uint16_t *)(0x84)) = -(12000000L/(1024*16));
    (*(volatile uint8_t *)((0x16) + 0x20)) = (1 << (0));
    while(!((*(volatile uint8_t *)((0x16) + 0x20)) & (1 << (0))));



    (*(volatile uint8_t *)((0x03) + 0x20)) |= (1 << (0));

    watchdogReset();
  } while (--count);
}



void watchdogReset() {
  __asm__ __volatile__ (
    "wdr\n"
  );
}

void watchdogConfig(uint8_t x) {
  (*(volatile uint8_t *)(0x60)) = (1 << (4)) | (1 << (3));
  (*(volatile uint8_t *)(0x60)) = x;
}

void appStart(uint8_t rstFlags) {



  __asm__ __volatile__ ("mov r2, %0\n" :: "r" (rstFlags));

  watchdogConfig((0));


  __asm__ __volatile__ (

    "ldi r30,%[rstvec]\n"
    "clr r31\n"
    "ijmp\n"::[rstvec] "M"((0))
  );
}




static inline void writebuffer(int8_t memtype, uint8_t *mybuff,
          uint16_t address, pagelen_t len)
{
    switch (memtype) {
    case 'E':

        while(len--) {
     eeprom_write_byte((uint8_t *)(address++), *mybuff++);
        }
# 875 "optiboot.c"
 break;
    default:





 {

     uint8_t *bufPtr = mybuff;
     uint16_t addrPtr = (uint16_t)(void*)address;
# 896 "optiboot.c"
     (__extension__({ __asm__ __volatile__ ( "out %0, %1\n\t" "spm\n\t" : : "i" ((((uint16_t) &((*(volatile uint8_t *)((0x37) + 0x20)))) - 0x20)), "r" ((uint8_t)((1 << (0)) | (1 << (1)))), "z" ((uint16_t)(uint16_t)(void*)address) ); }));

     do{}while(((*(volatile uint8_t *)((0x37) + 0x20)) & (uint8_t)(1 << (0))));




     do {
  uint16_t a;
  a = *bufPtr++;
  a |= (*bufPtr++) << 8;



  (__extension__({ __asm__ __volatile__ ( "movw  r0, %3\n\t" "out %0, %1\n\t" "spm\n\t" "clr  r1\n\t" : : "i" ((((uint16_t) &((*(volatile uint8_t *)((0x37) + 0x20)))) - 0x20)), "r" ((uint8_t)(1 << (0))), "z" ((uint16_t)(uint16_t)(void*)addrPtr), "r" ((uint16_t)a) : "r0" ); }));

  addrPtr += 2;
     } while (len -= 2);







     (__extension__({ __asm__ __volatile__ ( "out %0, %1\n\t" "spm\n\t" : : "i" ((((uint16_t) &((*(volatile uint8_t *)((0x37) + 0x20)))) - 0x20)), "r" ((uint8_t)((1 << (0)) | (1 << (2)))), "z" ((uint16_t)(uint16_t)(void*)address) ); }));

     do{}while(((*(volatile uint8_t *)((0x37) + 0x20)) & (uint8_t)(1 << (0))));





     (__extension__({ __asm__ __volatile__ ( "out %0, %1\n\t" "spm\n\t" : : "i" ((((uint16_t) &((*(volatile uint8_t *)((0x37) + 0x20)))) - 0x20)), "r" ((uint8_t)((1 << (0)) | (1 << (4)))) ); }));


 }
 break;
    }
}

static inline void read_mem(uint8_t memtype, uint16_t address, pagelen_t length)
{
    uint8_t ch;

    switch (memtype) {


    case 'E':
 do {
     putch(eeprom_read_byte((uint8_t *)(address++)));
 } while (--length);
 break;

    default:
 do {
# 966 "optiboot.c"
     __asm__ ("elpm %0,Z+\n" : "=r" (ch), "=z" (address): "1" (address));




     putch(ch);
 } while (--length);
 break;
    }
}
