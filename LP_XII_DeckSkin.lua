-- Lord Percival XII & Co. Deck Skin

-- Base Definitions

local atlas_base = "lp_n_co"
local suits = {"Hearts", "Clubs", "Diamonds", "Spades"}
local ranks = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"}
local descriptions = {
	"Lord Percival XII & Co. Deck Skin", 
	"SPARE",
	"Lord Percival XII & Co.",
	"Lord Percival XII & Co. - Extended",
	"Lord Percival XII & Co. - Ultimate"
}

-- Atlas definitions

local mod_icon = SMODS.Atlas {
	key = "modicon",
	path = "icon.png",
	px = 32,
	py = 32,
}

-- Collab Based Definitions
-- Note: King, Queen and Jack cards only

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

-- Suit Based Definitions
-- Note: King, Queen, Jack and Ace cards only

local atlas_suit_hc = SMODS.Atlas {
	key = atlas_base .. "_deck_hc",
	path = atlas_base .. "_deck_hc.png",
	px = 71,
	py = 95,
}

local atlas_suit_lc = SMODS.Atlas {
	key = atlas_base .. "_deck_lc",
	path = atlas_base .. "_deck_lc.png",
	px = 71,
	py = 95,
}

-- Full Suit Based Definitions
-- Note: All cards included

local atlas_full_hc = SMODS.Atlas {
	key = atlas_base .. "_deck_custom_hc",
	path = atlas_base .. "_deck_custom_hc.png",
	px = 71,
	py = 95,
}

local atlas_full_lc = SMODS.Atlas {
	key = atlas_base .. "_deck_custom_lc",
	path = atlas_base .. "_deck_custom_lc.png",
	px = 71,
	py = 95,
}

-- Crediting Functions Base

-- Has Deck Skin Card UI
-- Note: The function assumes that the implemented designs are made by one artist.
has_ds_card_ui_base = function(card, deckskin, palette)
	if card.base.value == "King" or card.base.value == "Queen" or card.base.value == "Jack" or card.base.value == "Ace" then
		return true
	end
	return false
end

generate_ds_card_ui_base = function(card, deckskin, palette, info_queue, desc_nodes, specific_vars, full_UI_table)
    if card.base.value == "King" or card.base.value == "Queen" or card.base.value == "Jack" or card.base.value == "Ace" then
        localize{type = 'other', key = 'artist', nodes = desc_nodes, vars = {}} 
        localize{type = 'other', key = 'artist_credit', nodes = desc_nodes, vars = { "LordPercivalXII" }}
    end
end

-- Deck Skin definition

-- Collab Based Definitions
-- Note: King, Queen and Jack cards only

SMODS.DeckSkin {
	key = atlas_base .. "_hearts",
	suit = "Hearts",
	loc_txt = descriptions[3],
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
			ranks = {'Jack', 'Queen', "King",},
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
	loc_txt = descriptions[3],
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
			ranks = {'Jack', 'Queen', "King",},
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
	loc_txt = descriptions[3],
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
			ranks = {'Jack', 'Queen', "King",},
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
	loc_txt = descriptions[3],
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
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_clubs_hc.key,
			pos_style = 'collab',
		},
	},
	has_ds_card_ui = has_ds_card_ui_base,
	generate_ds_card_ui = generate_ds_card_ui_base,
}

-- Suit Based Definitions
-- Note: King, Queen, Jack and Ace cards only

for i, suit in ipairs(suits) do
	SMODS.DeckSkin {
		key = atlas_base .. "_deck_" .. suit:lower() .. "_skin",
		suit = suit,
		loc_txt = descriptions[4],
		palettes = {
			{
				key = "lc",
				ranks = ranks,
				display_ranks = {"King", "Queen", "Jack", "Ace"},
				atlas = atlas_suit_lc.key,
				pos_style = 'deck',
			},
			{
				key = "hc",
				ranks = ranks,
				display_ranks = {"King", "Queen", "Jack", "Ace"},
				atlas = atlas_suit_hc.key,
				pos_style = 'deck',
			},
		},
		has_ds_card_ui = has_ds_card_ui_base,
		generate_ds_card_ui = generate_ds_card_ui_base,
	}
end

-- Full Suit Based Definitions
-- Note: All cards included

for i, suit in ipairs(suits) do
	SMODS.DeckSkin {
		key = atlas_base .. "_deck_full_" .. suit:lower() .. "_skin",
		suit = suit,
		loc_txt = descriptions[5],
		palettes = {
			{
				key = "lc",
				ranks = ranks,
				display_ranks = {"King", "Queen", "Jack", "Ace"},
				atlas = atlas_full_lc.key,
				pos_style = 'deck',
			},
			{
				key = "hc",
				ranks = ranks,
				display_ranks = {"King", "Queen", "Jack", "Ace"},
				atlas = atlas_full_hc.key,
				pos_style = 'deck',
			},
		},
		has_ds_card_ui = has_ds_card_ui_base,
		generate_ds_card_ui = generate_ds_card_ui_base,
	}
end