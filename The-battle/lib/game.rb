class Game
    DEFAULT_DAMAGE = 10
    def attack(player, damage=DEFAULT_DAMAGE)
        player.receive_damage(damage)
    end
end