module ConferenceSessionsHelper
  def display_session_abstract(abstract)
    return "I am an unsufferable goon" if abstract.match(/\.NET/)
    abstract
  end
end
