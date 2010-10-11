module ConferenceSessionsHelper
  def display_session_abstract(abstract)
    return "I am an unsufferable goon" if abstract.match(/\.NET/)
    return "Everything is complex" if abstract.match(/Java/)
    abstract
  end
end
