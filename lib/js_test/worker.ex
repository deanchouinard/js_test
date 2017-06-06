defmodule JsTest.Worker do
  use GenServer

  @name JW
  
  ## Client API

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts ++ [name: JW])
  end

  def add_item(item) do
    GenServer.call(@name, {:item, item})
  end

  def list_items() do
    GenServer.call(@name, :list_items)
  end

  ## Server Callbacks

  def init(:ok) do
    {:ok, []}
  end

  def handle_call({:item, item}, _from, list) do
    new_list = list ++ [item]
    {:reply, item, new_list}
  end

  def handle_call(:list_items, _from, list) do
    {:reply, list, list}
  end



end

