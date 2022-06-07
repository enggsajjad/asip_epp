/* Type information for ada/decl.c.
   Copyright (C) 2004, 2007 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3, or (at your option) any later
version.

GCC is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

You should have received a copy of the GNU General Public License
along with GCC; see the file COPYING3.  If not see
<http://www.gnu.org/licenses/>.  */

/* This file is machine generated.  Do not edit.  */

/* GC roots.  */

static void gt_ggc_ma_dummy_node_table (void *);
static void
gt_ggc_ma_dummy_node_table (ATTRIBUTE_UNUSED void *x_p)
{
  if (dummy_node_table != NULL) {
    size_t i0;
    for (i0 = 0; i0 != (size_t)(max_gnat_nodes); i0++) {
      gt_ggc_m_9tree_node (dummy_node_table[i0]);
    }
    ggc_mark (dummy_node_table);
  }
}

static void gt_pch_pa_dummy_node_table
    (void *, void *, gt_pointer_operator, void *);
static void gt_pch_pa_dummy_node_table (ATTRIBUTE_UNUSED void *this_obj,
      ATTRIBUTE_UNUSED void *x_p,
      ATTRIBUTE_UNUSED gt_pointer_operator op,
      ATTRIBUTE_UNUSED void * cookie)
{
  if (dummy_node_table != NULL) {
    size_t i0;
    for (i0 = 0; i0 != (size_t)(max_gnat_nodes); i0++) {
      if ((void *)(dummy_node_table) == this_obj)
        op (&(dummy_node_table[i0]), cookie);
    }
    if ((void *)(&dummy_node_table) == this_obj)
      op (&(dummy_node_table), cookie);
  }
}

static void gt_pch_na_dummy_node_table (void *);
static void
gt_pch_na_dummy_node_table (ATTRIBUTE_UNUSED void *x_p)
{
  if (dummy_node_table != NULL) {
    size_t i1;
    for (i1 = 0; i1 != (size_t)(max_gnat_nodes); i1++) {
      gt_pch_n_9tree_node (dummy_node_table[i1]);
    }
    gt_pch_note_object (dummy_node_table, &dummy_node_table, gt_pch_pa_dummy_node_table, gt_types_enum_last);
  }
}

const struct ggc_root_tab gt_ggc_r_gt_ada_decl_h[] = {
  {
    &dummy_node_table,
    1,
    sizeof (dummy_node_table),
    &gt_ggc_ma_dummy_node_table,
    &gt_pch_na_dummy_node_table
  },
  LAST_GGC_ROOT_TAB
};

