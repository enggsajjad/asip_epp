/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     NUMBER_T = 258,
     OP_ADD_T = 259,
     OP_SUB_T = 260,
     OP_MUL_T = 261,
     OP_DIV_T = 262,
     OP_MOD_T = 263,
     LEFT_PAR_T = 264,
     RIGHT_PAR_T = 265,
     OP_LSHIFT_T = 266,
     OP_RSHIFT_T = 267,
     OP_AND_T = 268,
     OP_OR_T = 269,
     OP_XOR_T = 270,
     OP_NOT_T = 271,
     OP_END_T = 272,
     SYMBOL_T = 273,
     UNARY_PLUS = 274,
     UNARY_NEG = 275,
     UNARY_NOT = 276
   };
#endif
/* Tokens.  */
#define NUMBER_T 258
#define OP_ADD_T 259
#define OP_SUB_T 260
#define OP_MUL_T 261
#define OP_DIV_T 262
#define OP_MOD_T 263
#define LEFT_PAR_T 264
#define RIGHT_PAR_T 265
#define OP_LSHIFT_T 266
#define OP_RSHIFT_T 267
#define OP_AND_T 268
#define OP_OR_T 269
#define OP_XOR_T 270
#define OP_NOT_T 271
#define OP_END_T 272
#define SYMBOL_T 273
#define UNARY_PLUS 274
#define UNARY_NEG 275
#define UNARY_NOT 276




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 38 "../../opcodes/simple-expr.y"
{
  char     *str;
  int64_t  value;
}
/* Line 1529 of yacc.c.  */
#line 96 "simple-expr.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE libccg_lval;

