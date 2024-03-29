; https://github.com/move-hub/move-syntax-highlight/blob/12cda2eaeb81f362afa50c0d64d9f54582c34bcc/queries/highlights.scm
(address_literal) @number
(num_literal) @number
(byte_string_literal) @string
(hex_string_literal) @string

(module_identifier) @class
(struct_identifier) @struct
(function_identifier) @function
(variable_identifier) @variable
(type_parameter_identifier) @typeParameter
(field_identifier) @property
(constant_identifier) @property.static.constant


(use_member
  member: (identifier) @member
  alias: (identifier)? @member)
(spec_let
  name: (identifier) @property)
(spec_property
  (identifier) @property)
(spec_variable
  name: (identifier) @variable)

(resource_accquires
  (module_access
    (identifier) @struct))
(apply_type
  (module_access
    (identifier) @type))
(apply_type
  (module_access
    (identifier) @type.defaultLibrary
    (#match? @type.defaultLibrary "^u8|u64|u128|bool|address|signer|vector$")))
(name_expression
  (module_access
    (identifier) @variable))
(call_expression
  (module_access
    (identifier) @function))
(pack_expression
  (module_access
    (identifier) @struct))
(bind_unpack
  (module_access
    (identifier) @struct))

(quantifier_binding
  (identifier) @parameter)


(func_params
  (function_parameter
    name: (variable_identifier) @parameter.modification
    type: (ref_type
            mutable: "&mut")))
(func_params
  (function_parameter
    name: (variable_identifier) @parameter.readonly
    type: (ref_type
            mutable: "&")))

(binary_expression
  operator: (binary_operator) @operator)
(unary_op) @operator


(spec_apply_name_pattern) @struct


(line_comment) @comment
(
  (line_comment) @comment.documentation
  (#match? @comment.documentation "^\\\/\\\/\\\/([^/].*)?$")
)
(block_comment) @comment
(
  (block_comment) @comment.documentation
  (#match? @comment.documentation "^\\\/\\\*\\\*(\\n|[^*].*)")
)

(condition_kind) @macro
(invariant_modifier) @modifier

"const" @keyword
"as" @keyword
"address" @keyword
"script" @keyword
"use" @keyword
"module" @keyword
"native" @keyword
"resource" @keyword
"struct" @keyword
"public" @keyword
"fun" @keyword
"acquires" @keyword
"spec" @keyword
"schema" @keyword
"include" @keyword
"apply" @keyword
"to" @keyword
"with" @keyword
"internal" @keyword
"pragma" @keyword
"global" @keyword
"local" @keyword
"define" @keyword
"copy" @keyword
"move" @keyword
"let" @keyword
"if" @keyword
"else" @keyword
"while" @keyword
"loop" @keyword
"return" @keyword
"abort" @keyword
"break" @keyword
"continue" @keyword
