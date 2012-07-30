" Vim syntax file
" Language:     osl
" Maintainer:   Will Zhou <willzhou@live.com>
" Last Change:  2012 July 30
" Version:      0.1
"
" Todo:
" - very much

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword   oslStatement   select
syn keyword   oslStatement   return
syn keyword   oslStatement   closure color do emit float illuminance illuminate matrix normal
syn keyword   oslStatement   output point public vector void while

syn keyword     oslConditional    if else switch
syn keyword     oslBranch         break continue
syn keyword     oslRepeat         for
syn keyword     oslType           struct
syn keyword     oslType           byte
syn keyword     oslType           uint int float uintptr string
syn keyword     oslType			  shader surface displacement light volume

syn keyword     oslBoolean        true false

syn keyword     oslConstant       iota

" Builtin functions

syn keyword  oslBif  aastep abs acos area arraylength asin atan atan2 blackbody bump
syn keyword  oslBif  calculatenormal ceil cellnoise clamp color concat cooktorrance cos
syn keyword  oslBif  cosh cross degrees determinant dielectric diffuse displace distance
syn keyword  oslBif  dot Dx Dy environment erf erfc error exit exp exp2 expml fabs faceforward
syn keyword  oslBif  filterwidth floor fmod format fprintf fresnel getattribute getmatrix
syn keyword  oslBif  getmessage gettextureinfo hash hypot inversesqrt isfinite isinf isnan
syn keyword  oslBif  length log log10 log2 logb luminance matrix max min mix mod noise normal
syn keyword  oslBif  normalize orennayar phong pnoise point pow printf psnoise radians random
syn keyword  oslBif  raytype reflect reflection refract refraction rotate round setmessage
syn keyword  oslBif  sign sin sincos sinh smoothstep snoise spline splineinverse sqrt
syn keyword  oslBif  startswith step string strlen struct substr subsurface surfacearea tan
syn keyword  oslBif  tanh texture texture3d transform transformc transformu translucence
syn keyword  oslBif  transpose trunc vector ward warning
syn keyword  oslBif  transparent
syn keyword  oslBif  endswith regex_search pointcloud_search pointcloud_get 
syn keyword  oslBif  dict_find dict_next dict_value trace
syn keyword  oslBif  P I N Ng u v dPdu dPdv Ps time dtime dPdtime Ci
syn keyword  oslBif  M_PI M_PI_2 M_PI_4 M_2_PI M_2PI M_4PI M_2_SQRTPI 
syn keyword  oslBif  M_E M_LN2 M_LN10 M_LOG2E M_LOG10E M_SQRT2 M_SQRT1_2

" Commants
syn keyword     oslTodo           contained TODO FIXME XXX
syn match       oslLineComment    "\/\/.*" contains=@Spell,oslTodo
syn match       oslCommentSkip    "^[ \t]*\*\($\|[ \t]\+\)"
syn region      oslComment        start="/\*"  end="\*/" contains=@Spell,oslTodo

" Numerals
syn case ignore
"integer number, or floating point number without a dot and with "f".
syn match       oslNumbers        display transparent "\<\d\|\.\d" contains=goNumber,goFloat,goOctError,goOct
syn match       oslNumbersCom     display contained transparent "\<\d\|\.\d" contains=goNumber,goFloat,goOct
syn match       oslNumber         display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"

" hex number
syn match       oslNumber         display contained "0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"

" oct number
syn match       oslOct            display contained "0\o\+\(u\=l\{0,2}\|ll\=u\)\>" contains=goOctZero
syn match       oslOctZero        display contained "\<0"

syn match       oslFloat          display contained "\d\+\.\d*\(e[-+]\=\d\+\)\="
syn match       oslFloat          display contained "\d\+e[-+]\=\d\=\>"
syn match       oslFloat          display "\(\.[0-9_]\+\)\(e[-+]\=[0-9_]\+\)\=[fl]\=i\=\>"

" Literals
syn region      oslString         start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell

syn match       oslSpecial        display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn match       oslCharacter      "L\='[^\\]'"
syn match       oslCharacter      "L'[^']*'" contains=goSpecial


syn keyword oslReservedWords bool case catch char class const delete default double enum extern
syn keyword oslReservedWords false friend goto inline long new operator private protected short
syn keyword oslReservedWords signed sizeof static switch template this throw true try typedef 
syn keyword oslReservedWords uniform union unsigned varying virtual volatile


hi def link oslStatement     Statement
hi def link oslConditional   Conditional
hi def link oslBranch        Conditional
hi def link oslLabel         Label
hi def link oslRepeat        Repeat
hi def link oslType          Type
hi def link oslValue         Constant
hi def link oslBoolean       Boolean
hi def link oslConstant      Constant
hi def link oslBif           Function
hi def link oslTodo          Todo
hi def link oslLineComment   oslComment
hi def link oslComment       Comment
hi def link oslNumbers       Number
hi def link oslNumbersCom    Number
hi def link oslNumber        Number
hi def link oslFloat         Float
hi def link oslOct           Number
hi def link oslOctZero       Number
hi def link oslString        String
hi def link oslSpecial       Special
hi def link oslCharacter     Character
hi def link oslReservedWords Type


let b:current_syntax = "osl"
