defmodule UseImportRequire do
  alias UseImportRequire.AliasMe
  alias UseImportRequire.AliasMe, as: AnotherName

  def alias_test do
    AliasMe.function
  end

  def alias_as_test do
    AnotherName.function
  end





  import UseImportRequire.ImportMe

  def import_test do
    function
  end





  # The require macro instructs the compiler to load the specified module before compiling the containing module. 
  # This is only necessary if you want to reference macros from the specified module. For example, we would need:
  # require UseImportRequire.RequireMe
  # if the RequireMe module contained a macro we wanted to use. Nothing special is done to the macro name. We would still need to reference it with its fully qualified name.





  # The use macro invokes a special macro, called __using__/1, from the specified module.
  # Using UseImportRequire.UseMe defines a use_test/0 function through invocation of the __using__/1 macro
  # Basically, it just RUNS whatever code in file use_me.ex under __using__(_) macro
  use UseImportRequire.UseMe





  def reference_test do
    UseImportRequire.ReferenceMe.function
  end
end
