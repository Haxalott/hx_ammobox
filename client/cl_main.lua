---@return boolean
lib.callback.register('hx_ammobox', function()
    if lib.progressCircle({
        duration = 2500,
        position = 'bottom',
        label = 'Unpackaging Ammo...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true
        },
        anim = {
            dict = 'missmechanic',
            clip = 'work2_base'
        }
    }) then return true else return false end
end)