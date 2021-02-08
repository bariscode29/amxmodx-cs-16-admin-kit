// by bariscode29
#include <amxmodx>
#include <amxmisc>
#include <fun>
#include <cstrike>

new PLUGIN[] = "Admin Kit"
new AUTHOR[] = "bariscodefx"
new VERSION[] = "1.0"

public plugin_init()
{
  register_plugin(PLUGIN, VERSION, AUTHOR)
  register_concmd("amx_adminkit", "kit", ADMIN_SLAY)
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
