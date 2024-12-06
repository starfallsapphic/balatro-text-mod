--- STEAMODDED HEADER
--- MOD_NAME: sylvie's text replacement mod
--- MOD_ID: sylvie_text_mod
--- MOD_AUTHOR: [sylvie]
--- MOD_DESCRIPTION: changes much of the text in the game to shit only i will find funny

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.sylvie_text_mod()
    sendDebugMessage("loading sylvie_text_mod")

    -- check if G.localization.misc is available
    if G and G.localization and G.localization.misc then
        sendDebugMessage("G.localization.misc is available")
    else
        sendDebugMessage("G.localization.misc is not available")
    end

    -- modify dictionary text
    if G and G.localization and G.localization.misc and G.localization.misc.dictionary then
        G.localization.misc.dictionary["ph_improve_run"] = "who lowkey floating vending machine"
        G.localization.misc.dictionary["ph_blind_score_at_least"] = "score this"
        G.localization.misc.dictionary["ph_score_at_least"] = "score this"
        G.localization.misc.dictionary["ph_choose_blind_1"] = "skip it. you know"
        G.localization.misc.dictionary["ph_choose_blind_2"] = "you want to"

        G.localization.misc.dictionary["b_next_round_1"] = "let's go"
        G.localization.misc.dictionary["b_next_round_2"] = "gambling!"
        G.localization.misc.dictionary["b_skip_blind"] = "no!!!!!!!!!"
        G.localization.misc.dictionary["b_play_hand"] = "send it"
        G.localization.misc.dictionary["b_discard"] = "nuh uh"
        G.localization.misc.dictionary["b_cash_out"] = "big Winner!"
        G.localization.misc.dictionary["b_sort_hand"] = "the sorterrr"

        G.localization.misc.dictionary["k_reroll"] = "these suck"
        G.localization.misc.dictionary["k_rank"] = "rank"
        G.localization.misc.dictionary["k_suit"] = "flush"
        G.localization.misc.dictionary["k_aces"] = "Asexuals"
        G.localization.misc.dictionary["k_eaten_ex"] = "i eated it :("
        G.localization.misc.dictionary["k_again_ex"] = "run it back"
        G.localization.misc.dictionary["k_copied_ex"] = "two"
        G.localization.misc.dictionary["k_disabled_ex"] = "nah"
        G.localization.misc.dictionary["k_extinct_ex"] = "nomnomnom"
        G.localization.misc.dictionary["k_drank_ex"] = "biiiig sip"
        G.localization.misc.dictionary["k_nope_ex"] = "NO!!!!!!!!!!!!!!!!!!"




        G.localization.misc.quips.lq_1 = {"girl........"}
        G.localization.misc.quips.lq_2 = {"you don't have", "enough memory", "in the", "memory card"}
        G.localization.misc.quips.lq_3 = {"i just killed", "you in my", "mind"}
        G.localization.misc.quips.lq_4 = {"what a fucking", "blunder tbh"}
        G.localization.misc.quips.lq_5 = {
            "i was thinking about why so",
            "many in the radical left",
            "participate in 'balatro'. the",
            "reason is the left's lack of",
            "work ethic, 'playing gold stake'",
            "rather then 'investing', and, in",
            "a petersonian sense, to elevate",
            "alternative sexual archetypes in",
            "the marketplace ('eternal blueprint')",
            "(1/14)",
        }
        G.localization.misc.quips.lq_6 = {"you're washed"}
        G.localization.misc.quips.lq_7 = {"weh"}
        G.localization.misc.quips.lq_8 = {"i would have", "simply played the", "cards better ngl"}
        G.localization.misc.quips.lq_9 = {"aaauugfhghfhghhghhhhh"}
        G.localization.misc.quips.lq_10 = {"why did you", "lose? are", "you stupid?"}

        G.localization.misc.quips.wq_1 = {"we're so", "fucking back"}
        G.localization.misc.quips.wq_2 = {":3c"}
        G.localization.misc.quips.wq_3 = {"HOLYYYYY"}
        G.localization.misc.quips.wq_4 = {"i'm so proud", "of you <3"}
        G.localization.misc.quips.wq_5 = {"what are we,", "some kind of", "Balatro?"}
        G.localization.misc.quips.wq_6 = {"ok now go endless", "and die immediately"}
        G.localization.misc.quips.wq_7 = {"balatro"}

        sendDebugMessage("misc changes complete")
    else
        sendDebugMessage("misc changes failed")
    end


    -- modify poker hand text
    if G and G.localization and G.localization.misc and G.localization.misc.poker_hands then
        G.localization.misc.poker_hands["Flush Five"] = "flushed away (2006)"
        G.localization.misc.poker_hands["Royal Flush"] = "monarchy :("
        G.localization.misc.poker_hands['Straight Flush'] = "gay fucking mess"
        G.localization.misc.poker_hands["Flush House"] = "flush toilet"
        G.localization.misc.poker_hands.Flush = "always plays flush"
        G.localization.misc.poker_hands['Straight'] = "gay"
        G.localization.misc.poker_hands["Full House"] = "full house like carpet"
        G.localization.misc.poker_hands["Five of a Kind"] = "cheating"
        G.localization.misc.poker_hands["Four of a Kind"] = "tetris"
        G.localization.misc.poker_hands["Three of a Kind"] = ":3c of a kind"
        G.localization.misc.poker_hands["Two Pair"] = "two of two of them"
        G.localization.misc.poker_hands.Pair = "two of them"
        G.localization.misc.poker_hands["High Card"] = "haha, ha, one!"
        sendDebugMessage("hand changes complete")
    else
        sendDebugMessage("hand changes failed")
    end


    -- modify deck names / descriptions
    if G and G.localization and G.localization.descriptions and G.localization.descriptions.Back then
        G.localization.descriptions.Back.b_black.text = {
            "{C:attention}+#1#{} Joker slot",
            "",
            "{C:blue}-#2#{} hand",
            "every round",
            "if you like {C:red}losing{}"
        }
        G.localization.descriptions.Back.b_abandoned.text = {
            "i have {C:attention}social{}",
            "{C:attention}anxiety{} :(",
        }
        G.localization.descriptions.Back.b_checkered.name = "flush deck"
        G.localization.descriptions.Back.b_checkered.text = {
            "poor predictable",
            "{C:money}bart{}. always",
            "plays {C:attention}flush{}"
        }
        G.localization.descriptions.Back.b_erratic.text = {
            "this deck is",
            "{C:attention}fucked up{} bruh",
        }
        sendDebugMessage("description changes complete")
    else
        sendDebugMessage("description changes failed")
    end


    -- modify poker hand descriptions
    if G and G.localization and G.localization.misc and G.localization.misc.poker_hand_descriptions then
        G.localization.misc.poker_hand_descriptions.Flush = { "good ol flush! nothing beats that!" }
        sendDebugMessage("hand description changes complete")
    else
        sendDebugMessage("hand description changes failed")
    end


    -- modify card rank text
    if G and G.localization and G.localization.misc and G.localization.misc.ranks then
        G.localization.misc.ranks.Ace = "Asexual"
        sendDebugMessage("rank changes complete")
    else
        sendDebugMessage("rank changes failed")
    end


    -- modify card text
    if G and G.localization and G.localization.descriptions then
        G.localization.descriptions.Joker.j_four_fingers.text = {
            "All {C:attention}flushes{}",
            "and {C:attention}gays{} can be",
            "made with {C:attention}4{} cards",
        }

        G.localization.descriptions.Joker.j_runner.text = {
            "Gains {C:chips}+#2#{} Chips",
            "if played hand",
            "contains a {C:attention}gay{}",
            "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
        }

        G.localization.descriptions.Joker.j_shortcut.text = {
            "Allows {C:attention}gays{} to be",
            "made with gaps of {C:attention}1 rank",
            "{C:inactive}(ex: {C:attention}10 8 6 5 3{C:inactive})",
        }

        G.localization.descriptions.Joker.j_superposition.text = {
            "Create a {C:tarot}Tarot{} card if",
            "poker hand contains an",
            "{C:attention}Asexual{} and a {C:attention}gay{}",
            "{C:inactive}(Must have room)",
        }

        G.localization.descriptions.Joker.j_fibonacci.text = {
            "Each played {C:attention}Asexual{},",
            "{C:attention}2{}, {C:attention}3{}, {C:attention}5{}, or {C:attention}8{} gives",
            "{C:mult}+#1#{} Mult when scored",
        }

        G.localization.descriptions.Joker.j_scholar.text = {
            "Played {C:attention}Asexuals{}",
            "give {C:chips}+#2#{} Chips",
            "and {C:mult}+#1#{} Mult",
            "when scored",
        }

        G.localization.descriptions.Spectral.c_grim.text = {
            "Destroy {C:attention}1{} random",
            "card in your hand,",
            "add {C:attention}#1#{} random {C:attention}Enhanced",
            "{C:attention}Asexuals{} to your hand",
        }

        G.localization.descriptions.Voucher.v_grabber.text = {
            "Permanently",
            "gain {C:blue}+#1#{} hand",
            "per round",
            "{C:inactive,s:0.8}the grabberrrr{}"
        }


        G.localization.descriptions.Joker.j_hanging_chad.name = "Hanging Chat"
        G.localization.descriptions.Joker.j_ride_the_bus.name = "Dublin Bus"

        G.localization.descriptions.Blind.bl_fish.name = "The Fishie"
        G.localization.descriptions.Blind.bl_mouth.name = "The Mouthwashing"

        sendDebugMessage("card changes complete")
    else
        sendDebugMessage("card changes failed")
    end
end

----------------------------------------------
------------MOD CODE END----------------------
