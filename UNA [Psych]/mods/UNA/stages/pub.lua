function onCreate()
	-- background shit
	makeLuaSprite('pub_BG', 'pub_background', -575, -200);
    addLuaSprite('pub_BG',false);

    makeLuaSprite('pub_MG', 'pub_midground', -575, -200);
    addLuaSprite('pub_MG',true);

    makeAnimatedLuaSprite('bartender','bartender_anim',-575, -200)
    addAnimationbyPrefix('bartender','bottle',"bar_anim",24,true)
    addLuaSprite('bartender',true)
    objectPlayAnimation('barender','bottle',false)

    makeAnimatedLuaSprite('bfpico','bf_pico_anim',-575, -200)
    addAnimationbyPrefix('bfpico','bfpicobounce',"bfpico",24,true)
    addLuaSprite('bfpico',true)
    objectPlayAnimation('bfpico','bfpicobounce',false)

end

function onBeatHit()

end

function onStepHit()

end

function onUpdate()

end