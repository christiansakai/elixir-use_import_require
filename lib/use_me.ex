defmodule UseImportRequire.UseMe do
  defmacro __using__(_) do
    quote do
      def use_test do
        IO.puts "use_test"
      end
    end
  end
end
