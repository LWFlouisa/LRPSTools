require_relative "LRPSFramework/LRPSFramework.rb"

# Generates dialogue of a contrastive nature in Francais.
def contrastive_dialogue
  LRPS_Framework::Language.contrastive
end

# From generated dialogue developed a metaprobability.
def contraprob
  LRPS_Framework::Language.contrastive_metaprobability
end

contrastive_dialogue

# => "Cette granit violet Je ne mange quicely, mais cette pomme rouge Je ne jute quicely. [ 0.034482759 ] [ 0.333333333 / 0.038461538 ]"
