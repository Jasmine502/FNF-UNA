-- x and y positions of the stage
local x = -575;
local y = -250;
local scale = 0.8;

function onCreate()
	-- background
	makeLuaSprite('pub_BG', 'bar_stage/pub_background', x, y);
    addLuaSprite('pub_BG',false);
    scaleObject('pub_BG',scale,scale);

    -- pub sign (open/karaoke)
    makeAnimatedLuaSprite('sign', 'bar_stage/pub_sign', x, y);
    addLuaSprite('sign',false);
    luaSpriteAddAnimationByPrefix('sign','sign','sign',24,true);
    objectPlayAnimation('sign','sign',false);
    scaleObject('sign',scale,scale);

    -- eye
    makeAnimatedLuaSprite('eye', 'bar_stage/eye_anim', x, y);
    addLuaSprite('eye',false);
    luaSpriteAddAnimationByPrefix('eye','eye','eye',24,true);
    objectPlayAnimation('eye','eye',false);   
    scaleObject('eye',scale,scale); 

    -- midground
    makeLuaSprite('pub_MG', 'bar_stage/pub_midground', x, y);
    addLuaSprite('pub_MG',true);
    scaleObject('pub_MG',scale,scale);
    setScrollFactor('pub_MG',0.9,0.9);

    -- bubble tube 
    makeAnimatedLuaSprite('lamp','bar_stage/lamp_anim', x+1770, y);
    addLuaSprite('lamp',false);
    luaSpriteAddAnimationByPrefix('lamp','lamp','lamp',24,true);
    objectPlayAnimation('lamp','lamp',false);
    scaleObject('lamp',scale,scale);

    -- sonia
    makeAnimatedLuaSprite('sonia','bar_stage/sonia_anim',x, y);
    luaSpriteAddAnimationByPrefix('sonia','sonia','sonia',24,true);
    addLuaSprite('sonia',false);
    scaleObject('sonia',scale,scale);

    -- bf and pico
    makeAnimatedLuaSprite('bfpico','bar_stage/bf_pico_anim',x, y);
    luaSpriteAddAnimationByPrefix('bfpico','bfpico','bfpico',24,true);
    addLuaSprite('bfpico',false);
    scaleObject('bfpico',scale,scale);

    -- bartender
    makeAnimatedLuaSprite('bartender','bar_stage/bartender_anim',x, y);
    addLuaSprite('bartender',true);
    luaSpriteAddAnimationByPrefix('bartender','bar_anim','bar_anim',24,true);
    objectPlayAnimation('bartender','bar_anim',false);
    scaleObject('bartender',scale,scale);

end

function onBeatHit()
    objectPlayAnimation('bfpico','bfpico',true);
    objectPlayAnimation('sonia','sonia',true);
end


function onStepHit()
    
end

function onUpdate()

end