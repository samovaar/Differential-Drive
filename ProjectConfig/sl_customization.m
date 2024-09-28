function sl_customization(cm)
    cm.addCustomMenuFcn('Simulink:ToolsMenu', @getMyMenuItems);
end


function schemaFcns = getMyMenuItems(~)
    schemaFcns = {@createMacro};
end  


function schema = createMacro(~)
    schema = sl_action_schema;
    schema.label = 'Color Blocks';
    schema.statustip = 'Macros';
    schema.accelerator = 'Alt+Shift+F';
    schema.callback = @createMacrokb;
end


% Run sl_refresh_customizations in MATLAB cmd line after editing this file
function createMacrokb(~)
    % Searching for inport and outport blocks in current model subsystem 
    inportBlocks = Simulink.findBlocks(gcs, 'BlockType', 'Inport');
    outportBlocks = Simulink.findBlocks(gcs, 'BlockType', 'Outport');
    constantBlocks = Simulink.findBlocks(gcs, 'BlockType', 'Constant');

    for i = 1 : length(inportBlocks)
        set_param(inportBlocks(i), 'BackgroundColor', 'Yellow');
    end

    for i = 1 : length(outportBlocks)
        set_param(outportBlocks(i), 'BackgroundColor', 'Magenta');
    end
    
    for i = 1 : length(constantBlocks)
        set_param(constantBlocks(i), 'BackgroundColor', 'Green');
    end 
    
    clear i inportBlocks outportBlocks constantBlocks
end