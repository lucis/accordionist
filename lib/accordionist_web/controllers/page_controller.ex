defmodule AccordionistWeb.PageController do
  use AccordionistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
