-- Lord Percival XII & Co. Deck Skin

-- Base Definitions

local atlas_base = "lp_n_co"

-- Atlas definitions

local mod_icon = SMODS.Atlas {
	key = "modicon",
	path = "icon.png",
	px = 32,
	py = 32,
}

local atlas_hearts_hc = SMODS.Atlas {
	key = atlas_base .. "_hearts_hc",
	path = atlas_base .. "_hearts_hc.png",
	px = 71,
	py = 95,
}

local atlas_hearts_lc = SMODS.Atlas {
	key = atlas_base .. "_hearts_lc",
	path = atlas_base .. "_hearts_lc.png",
	px = 71,
	py = 95,
}

local atlas_spades_hc = SMODS.Atlas {
	key = atlas_base .. "_spades_hc",
	path = atlas_base .. "_spades_hc.png",
	px = 71,
	py = 95,
}

local atlas_spades_lc = SMODS.Atlas {
	key = atlas_base .. "_spades_lc",
	path = atlas_base .. "_spades_lc.png",
	px = 71,
	py = 95,
}

local atlas_diamonds_hc = SMODS.Atlas {
	key = atlas_base .. "_diamonds_hc",
	path = atlas_base .. "_diamonds_hc.png",
	px = 71,
	py = 95,
}

local atlas_diamonds_lc = SMODS.Atlas {
	key = atlas_base .. "_diamonds_lc",
	path = atlas_base .. "_diamonds_lc.png",
	px = 71,
	py = 95,
}

local atlas_clubs_hc = SMODS.Atlas {
	key = atlas_base .. "_clubs_hc",
	path = atlas_base .. "_clubs_hc.png",
	px = 71,
	py = 95,
}

local atlas_clubs_lc = SMODS.Atlas {
	key = atlas_base .. "_clubs_lc",
	path = atlas_base .. "_clubs_lc.png",
	px = 71,
	py = 95,
}

-- Crediting Functions Base

-- Has Deck Skin Card UI
-- Note: The function assumes that the implemented designs are made by one artist.
has_ds_card_ui_base = function(card, deckskin, palette)
	if card.base.value == "King" or card.base.value == "Queen" or card.base.value == "Jack" then
		return true
	end
	return false
end

generate_ds_card_ui_base = function(card, deckskin, palette, info_queue, desc_nodes, specific_vars, full_UI_table)
    if card.base.value == "King" or card.base.value == "Queen" or card.base.value == "Jack" then
        localize{type = 'other', key = 'artist', nodes = desc_nodes, vars = {}} 
        localize{type = 'other', key = 'artist_credit', nodes = desc_nodes, vars = { "LordPercivalXII" }}
    end
end

-- Deck Skin definition

SMODS.DeckSkin {
	key = atlas_base .. "_hearts",
	suit = "Hearts",
	loc_txt = "Lord Percival XII & Co.",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_hearts_lc.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_hearts_hc.key,
			pos_style = 'collab',
		},
	},
	has_ds_card_ui = has_ds_card_ui_base,
	generate_ds_card_ui = generate_ds_card_ui_base,
}

SMODS.DeckSkin {
	key = atlas_base .. "_spades",
	suit = "Spades",
	loc_txt = "Lord Percival XII & Co.",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_spades_lc.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_spades_hc.key,
			pos_style = 'collab',
		},
	},
	has_ds_card_ui = has_ds_card_ui_base,
	generate_ds_card_ui = generate_ds_card_ui_base,
}

SMODS.DeckSkin {
	key = atlas_base .. "_diamonds",
	suit = "Diamonds",
	loc_txt = "Lord Percival XII & Co.",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_diamonds_lc.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_diamonds_hc.key,
			pos_style = 'collab',
		},
	},
	has_ds_card_ui = has_ds_card_ui_base,
	generate_ds_card_ui = generate_ds_card_ui_base,
}

SMODS.DeckSkin {
	key = atlas_base .. "_clubs",
	suit = "Clubs",
	loc_txt = "Lord Percival XII & Co.",
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_clubs_lc.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_clubs_hc.key,
			pos_style = 'collab',
		},
	},
	has_ds_card_ui = has_ds_card_ui_base,
	generate_ds_card_ui = generate_ds_card_ui_base,
}
