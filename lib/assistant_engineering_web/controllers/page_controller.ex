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
          "Leveraged loan investors with precise document summaries and risk-aligned advice. Tooling: Prompt engineering, RAG",
        image: "images/credit_memo.png"
      },
      %{
        url: "https://chat.openai.com/g/g-XqAsoUyjd-gpts-prompt-evaluator",
        title: "Prompt Evaluator",
        description:
          "Evaluates your GPTs instructions and suggests improvements. Tooling: Prompt engineering, RAG",
        image: "images/prompt_evaluator.png"
      },
      %{
        url: "https://chat.openai.com/g/g-HQRj6hJuR-notes-from-underground-tutor",
        title: "Book Tutor",
        description:
          "Discuss themes and characters, save notes. Tooling: Prompt engineering, RAG, Actions (API)",
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
