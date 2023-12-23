LevelUpMenuState = Class{__includes = BaseState}

function LevelUpMenuState:init(pokemon)
    self.pokemon = pokemon

    local HPIncrease, attackIncrease, defenseIncrease, speedIncrease = self.pokemon:levelUp()

    self.statsMenu = Menu {
        x = 0,
        y = VIRTUAL_HEIGHT - 112,
        width = VIRTUAL_WIDTH,
        height = 112,
        items = {
            {text = 'HP:  '..self.pokemon.HP..' + ' ..HPIncrease.. ' = '..self.pokemon.HP + HPIncrease},
            {text = 'Attack:  '..self.pokemon.attack..' + ' ..attackIncrease.. ' = '..self.pokemon.attack + attackIncrease},
            {text = 'Defense:'..self.pokemon.defense..' + ' ..defenseIncrease.. ' = '..self.pokemon.defense + defenseIncrease},
            {text = 'Speed:'..self.pokemon.speed..' + ' ..speedIncrease.. ' = '..self.pokemon.speed + speedIncrease},       
        },
        cursor = false
    }
end

function LevelUpMenuState:update(dt)
    self.statsMenu:update(dt)
end

function LevelUpMenuState:render()
    self.statsMenu:render()
end