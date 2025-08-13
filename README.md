# msh-adrenalin-fivem
Adrenalin hapı ile hız sağlar ve ateş açtığınızda belirli bi süre hızlanırsınız aynı şekilde vurulduğunzdada hız sağlar

scriptti kurmak için ox_lib ve ox_inventory e ihtiyacınız var 

ilk önce adrenalin hapını item olarak ekliyelim
ox_inventory/data/item.lua



['adrenalin'] = {
	label = 'Adrenalin Hapı',
	weight = 600,
	stack = true,
	description = 'Adrenalin Hapı Sana Hız sağlar',
	client={
		 export = 'msh-adrenalin.adrenalinkullan',
		 image = 'adrenalin.png'
	}
}

Bundan sonra 

ox_inventory/web/images in içine adrenalin.png attınız


eğer Adrenalin Hapını kullanmak istemiyorsanız bunları yapmanıza gerek yok sadece silah ateş edildiğinde ve vuruldugunuzda çalışır
