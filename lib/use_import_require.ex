defmodule UseImportRequire do
  alias UseImportRequire.AliasMe
  alias UseImportRequire.AliasMe, as: AnotherName

  def alias_test do
    AliasMe.function
  end

  def alias_as_test do
    AnotherName.function
  end
end
