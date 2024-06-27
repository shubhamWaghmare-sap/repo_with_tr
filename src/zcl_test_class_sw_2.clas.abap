CLASS zcl_test_class_sw_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.

TYPES BEGIN OF ty_branch_w_links.
      INCLUDE TYPE if_abapgit_definitions=>ty_git_branch .
      TYPES links TYPE if_atom_types=>link_t.
TYPES END OF ty_branch_w_links.

    TYPES:
      BEGIN OF ty_response_data,
        access_mode  TYPE string,
        branches     TYPE STANDARD TABLE OF ty_branch_w_links WITH KEY name,
      END OF ty_response_data.

  METHODS: method.

ENDCLASS.



CLASS zcl_test_class_sw_2 IMPLEMENTATION.

  METHOD method.
    DATA ext TYPE ty_response_data.

  ENDMETHOD.

ENDCLASS.
