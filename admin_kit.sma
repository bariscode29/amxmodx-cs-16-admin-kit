// by bariscode29
#include <amxmodx>
#include <amxmisc>
#include <fun>
#include <cstrike>

new PLUGIN[] = "Admin Kit"
new AUTHOR[] = "bariscode29"
new VERSION[] = "1.10"

public plugin_init()
{
  register_plugin(PLUGIN, VERSION, AUTHOR)
  register_concmd("amx_adminkit", "kit")
}

public kit(id)
{
  if(is_user_alive(id))
  {
    set_user_armor(id, 255)
    set_user_health(id, 255)
    give_item(id, "weapon_m4a1")
    give_item(id, "weapon_ak47")
    give_item(id, "weapon_awp")
    
    client_print(id, print_chat, "[AK] Admin kiti verildi!")
  }
}