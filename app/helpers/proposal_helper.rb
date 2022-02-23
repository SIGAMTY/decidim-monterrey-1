module ProposalHelper
  def belongs_to_scope(user, proposal)
    authorization = ::Decidim::Authorization.where
                    .not(granted_at: nil)
                    .find_by!(user: user, name: "ine")
    user_scope = ::Decidim::Scope.find_by! code: authorization.metadata["district_id"].to_s

    proposal.scope == user_scope
  end
end