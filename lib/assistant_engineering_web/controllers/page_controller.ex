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
        image: "images/credit_memo.webp"
      },
      %{
        url: "https://chat.openai.com/g/g-XsAyhV679-carbon-intensity-assistant",
        title: "Carbon Intensity",
        description:
          "Expert on UK grid carbon intensity, understand carbon output of the grid, with fuel type breakdown.",
        tools: "Prompt engineering, Actions (API)",
        image: "images/carbon.webp"
      },
      # },
      # %{
      #   url: "https://chat.openai.com/g/g-XqAsoUyjd-gpts-prompt-evaluator",
      #   title: "Prompt Evaluator",
      #   description:
      #     "Evaluates your prompts and suggests improvements. Integrating industry best practices.",
      #   tools: "Prompt engineering, RAG",
      #   image: "images/prompt_evaluator.png"
      # },
      %{
        url: "https://chat.openai.com/g/g-HQRj6hJuR-notes-from-underground-tutor",
        title: "Book Tutor",
        description:
          "Ask the agent anything about the book, and save your notes on specific passages.",
        tools: "Prompt engineering, RAG, Actions (API)",
        image: "images/notes_from_underground.webp"
      }
    ]

    profile_links = [
      %{url: "https://twitter.com/tberman", title: "Twitter", icon: "fab fa-twitter"},
      %{url: "https://github.com/TomBers", title: "GitHub", icon: "fab fa-github"},
      %{
        url: "https://www.linkedin.com/in/tom-berman-213a4711",
        title: "LinkedIn",
        icon: "fab fa-linkedin-in"
      }
    ]

    render(conn, :home,
      contact_email: "team@assistant.engineering",
      mailto_link: "mailto:team@assistant.engineering",
      case_studies: case_studies,
      profile_links: profile_links,
      layout: false
    )
  end

  def privacy(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :privacy, layout: false)
  end

  def competition(conn, _params) do
    competition_url = Application.get_env(:assistant_engineering, :competition_url)
    render(conn, :competition, competition_url: competition_url, layout: false)
  end
end
