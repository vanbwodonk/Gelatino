# 1 "optiboot.c"
# 1 "D:\\optiboot-master\\optiboot\\bootloaders\\optiboot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "optiboot.c"
# 239 "optiboot.c"
unsigned const int __attribute__((section(".version")))
optiboot_version = 256*(6 + 0) + 2;


# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 1 3
# 37 "c:/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 3
# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 1 3
# 121 "c:/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "c:/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "c:/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "c:/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "c:/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 38 "c:/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 2 3
# 77 "c:/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 244 "optiboot.c" 2
# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 1 3
# 99 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 3
# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/sfr_defs.h" 1 3
# 100 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3
# 150 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 3
# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/iom128.h" 1 3
# 151 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3
# 408 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 3
# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/portpins.h" 1 3
# 409 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3

# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/common.h" 1 3
# 411 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3

# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/version.h" 1 3
# 413 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3


# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/fuse.h" 1 3
# 239 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 416 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3


# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/lock.h" 1 3
# 419 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3
# 245 "optiboot.c" 2
# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 1 3
# 81 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 3
# 1 "c:\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 1 3 4
# 214 "c:\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 3 4
typedef unsigned int size_t;
# 82 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 2 3
# 211 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 3
typedef void prog_void __attribute__((__progmem__));
typedef char prog_char __attribute__((__progmem__));
typedef unsigned char prog_uchar __attribute__((__progmem__));

typedef int8_t prog_int8_t __attribute__((__progmem__));
typedef uint8_t prog_uint8_t __attribute__((__progmem__));
typedef int16_t prog_int16_t __attribute__((__progmem__));
typedef uint16_t prog_uint16_t __attribute__((__progmem__));
typedef int32_t prog_int32_t __attribute__((__progmem__));
typedef uint32_t prog_uint32_t __attribute__((__progmem__));

typedef int64_t prog_int64_t __attribute__((__progmem__));
typedef uint64_t prog_uint64_t __attribute__((__progmem__));
# 848 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 3
extern const prog_void * memchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const prog_void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const prog_void *, int __val, size_t);
extern void *memcpy_P(void *, const prog_void *, size_t);
extern void *memmem_P(const void *, size_t, const prog_void *, size_t) __attribute__((__pure__));
extern const prog_void * memrchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const prog_char *);
extern const prog_char * strchr_P(const prog_char *, int __val) __attribute__((__const__));
extern const prog_char * strchrnul_P(const prog_char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const prog_char *);
extern int strcasecmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const prog_char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const prog_char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const prog_char *, size_t );
extern size_t strlcpy_P (char *, const prog_char *, size_t );
extern size_t strlen_P(const prog_char *) __attribute__((__const__));
extern size_t strnlen_P(const prog_char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const prog_char *, size_t);
extern char *strncpy_P(char *, const prog_char *, size_t);
extern char *strpbrk_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern const prog_char * strrchr_P(const prog_char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const prog_char * __delim);
extern size_t strspn_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const prog_char * __delim);
extern char *strtok_rP(char *__s, const prog_char * __delim, char **__last);
# 246 "optiboot.c" 2
# 1 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/eeprom.h" 1 3
# 410 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/eeprom.h" 3
# 1 "c:\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 1 3 4
# 152 "c:\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 326 "c:\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 3 4
typedef int wchar_t;
# 411 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/eeprom.h" 2 3
# 497 "c:/winavr-20100110/lib/gcc/../../avr/include/avr/eeprom.h" 3
uint8_t __eerd_byte_m128 (const uint8_t *__p) __attribute__((__pure__));




uint16_t __eerd_word_m128 (const uint16_t *__p) __attribute__((__pure__));




uint32_t __eerd_dword_m128 (const uint32_t *__p) __attribute__((__pure__));




float __eerd_float_m128 (const float *__p) __attribute__((__pure__));





void __eerd_block_m128 (void *__dst, const void *__src, size_t __n);





void __eewr_byte_m128 (uint8_t *__p, uint8_t __value);




void __eewr_word_m128 (uint16_t *__p, uint16_t __value);




void __eewr_dword_m128 (uint32_t *__p, uint32_t __value);




void __eewr_float_m128 (float *__p, float __value);





void __eewr_block_m128 (const void *__src, void *__dst, size_t __n);





void __eeupd_byte_m128 (uint8_t *__p, uint8_t __value);




void __eeupd_word_m128 (uint16_t *__p, uint16_t __value);




void __eeupd_dword_m128 (uint32_t *__p, uint32_t __value);




void __eeupd_float_m128 (float *__p, float __value);





void __eeupd_block_m128 (const void *__src, void *__dst, size_t __n);
# 247 "optiboot.c" 2






# 1 "boot.h" 1
# 118 "boot.h"
# 1 "c:\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include-fixed/limits.h" 1 3 4
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

  (*(volatile uint16_t *)((0x3D) + 0x20))=0x10FF;
# 473 "optiboot.c"
  ch = (*(volatile uint8_t *)((0x34) + 0x20));
  (*(volatile uint8_t *)((0x34) + 0x20)) = 0;
  if (ch & ((1 << (3)) | (1 << (2)) | (1 << (0))))
      appStart(ch);



  (*(volatile uint8_t *)((0x2E) + 0x20)) = (1 << (2)) | (1 << (0));
# 490 "optiboot.c"
  (*(volatile uint8_t *)(0x9B)) = (1 << (1));
  (*(volatile uint8_t *)(0x9A)) = (1 << (4)) | (1 << (3));
  (*(volatile uint8_t *)(0x9D)) = (1 << (1)) | (1 << (2));
  (*(volatile uint8_t *)(0x99)) = (uint8_t)( (16000000L + 115200 * 4L) / (115200 * 8L) - 1 );




  watchdogConfig(((1 << (2)) | (1 << (1)) | (1 << (3))));



  (*(volatile uint8_t *)((0x02) + 0x20)) |= (1 << (0));
# 512 "optiboot.c"
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


      bufPtr = ((uint8_t*)(0x100));
      do *bufPtr++ = getch();
      while (--length);


      verifySpace();
# 639 "optiboot.c"
      writebuffer(desttype, ((uint8_t*)(0x100)), address, savelength);


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
      putch(0x02);
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

  while (!((*(volatile uint8_t *)(0x9B)) & (1 << (5))));
  (*(volatile uint8_t *)(0x9C)) = ch;
# 704 "optiboot.c"
}

uint8_t getch(void) {
  uint8_t ch;
# 743 "optiboot.c"
  while(!((*(volatile uint8_t *)(0x9B)) & (1 << (7))))
    ;
  if (!((*(volatile uint8_t *)(0x9B)) & (1 << (4)))) {
# 754 "optiboot.c"
    watchdogReset();
  }

  ch = (*(volatile uint8_t *)(0x9C));
# 768 "optiboot.c"
  return ch;
}
# 790 "optiboot.c"
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
    (*(volatile uint16_t *)((0x2C) + 0x20)) = -(16000000L/(1024*16));
    (*(volatile uint8_t *)((0x36) + 0x20)) = (1 << (2));
    while(!((*(volatile uint8_t *)((0x36) + 0x20)) & (1 << (2))));

    (*(volatile uint8_t *)((0x03) + 0x20)) ^= (1 << (0));



    watchdogReset();
  } while (--count);
}



void watchdogReset() {
  __asm__ __volatile__ (
    "wdr\n"
  );
}

void watchdogConfig(uint8_t x) {
  (*(volatile uint8_t *)((0x21) + 0x20)) = (1 << (4)) | (1 << (3));
  (*(volatile uint8_t *)((0x21) + 0x20)) = x;
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
     __eewr_byte_m128((uint8_t *)(address++), *mybuff++);
        }
# 870 "optiboot.c"
 break;
    default:





 {

     uint8_t *bufPtr = mybuff;
     uint16_t addrPtr = (uint16_t)(void*)address;
# 889 "optiboot.c"
  (__extension__({ __asm__ __volatile__ ( "sts %0, %1\n\t" "spm\n\t" : : "i" (((uint16_t) &((*(volatile uint8_t *)(0x68))))), "r" ((uint8_t)((1 << (0)) | (1 << (1)))), "z" ((uint16_t)(uint16_t)(void*)address) ); }));



     do{}while(((*(volatile uint8_t *)(0x68)) & (uint8_t)(1 << (0))));




     do {
  uint16_t a;
  a = *bufPtr++;
  a |= (*bufPtr++) << 8;

  (__extension__({ __asm__ __volatile__ ( "movw  r0, %3\n\t" "sts %0, %1\n\t" "spm\n\t" "clr  r1\n\t" : : "i" (((uint16_t) &((*(volatile uint8_t *)(0x68))))), "r" ((uint8_t)(1 << (0))), "z" ((uint16_t)(uint16_t)(void*)addrPtr), "r" ((uint16_t)a) : "r0" ); }));



  addrPtr += 2;
     } while (len -= 2);





  (__extension__({ __asm__ __volatile__ ( "sts %0, %1\n\t" "spm\n\t" : : "i" (((uint16_t) &((*(volatile uint8_t *)(0x68))))), "r" ((uint8_t)((1 << (0)) | (1 << (2)))), "z" ((uint16_t)(uint16_t)(void*)address) ); }));



     do{}while(((*(volatile uint8_t *)(0x68)) & (uint8_t)(1 << (0))));



  (__extension__({ __asm__ __volatile__ ( "sts %0, %1\n\t" "spm\n\t" : : "i" (((uint16_t) &((*(volatile uint8_t *)(0x68))))), "r" ((uint8_t)((1 << (0)) | (1 << (4)))) ); }));




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
     putch(__eerd_byte_m128((uint8_t *)(address++)));
 } while (--length);
 break;

    default:
 do {
# 961 "optiboot.c"
     __asm__ ("elpm %0,Z+\n" : "=r" (ch), "=z" (address): "1" (address));




     putch(ch);
 } while (--length);
 break;
    }
}
