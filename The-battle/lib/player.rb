class Player
  attr_reader :name, :health
  DEFAULT_HEALTH = 50
  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def receive_damage(damage)
    @health -= damage
  end

  def attack(player, damage = 10)
    player.receive_damage(damage)
  end
end
