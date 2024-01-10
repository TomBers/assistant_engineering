defmodule AssistantEngineeringWeb.PageController do
  use AssistantEngineeringWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    case_studies = [
      %{
        url: "https://chat.openai.com/g/g-JTGPg4Brc-credit-memo-assistant",
        title: "Credit Memo",
        description:
          "Provide leveraged loan investors with precise document summaries and risk-aligned advice.",
        tools: "Prompt engineering, RAG",
        image: "images/credit_memo.png"
      },
      %{
        url: "https://chat.openai.com/g/g-XqAsoUyjd-gpts-prompt-evaluator",
        title: "Prompt Evaluator",
        description:
          "Evaluates your prompts and suggests improvements. Integrating industry best practices.",
        tools: "Prompt engineering, RAG",
        image: "images/prompt_evaluator.png"
      },
      %{
        url: "https://chat.openai.com/g/g-HQRj6hJuR-notes-from-underground-tutor",
        title: "Book Tutor",
        description:
          "Ask the agent anything about the book, and save your notes on specific passages.",
        tools: "Prompt engineering, RAG, Actions (API)",
        image: "images/notes_from_underground.png"
      }
    ]

    render(conn, :home,
      contact_email: "mailto:tjcberman@gmail.com",
      case_studies: case_studies,
      layout: false
    )
  end

  def privacy(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :privacy, layout: false)
  end
end
