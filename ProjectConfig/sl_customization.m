function sl_customization(cm)
    cm.addCustomMenuFcn('Simulink:ToolsMenu', @getMyMenuItems);
end


function schemaFcns = getMyMenuItems(~)
    schemaFcns = {@createMacro};
end  


function schema = createMacro(~)
    schema = sl_action_schema;
    schema.label = 'Create Macro';
    schema.statustip = 'Create Macro';
    schema.accelerator = 'Ctrl+Shift+F';
    schema.callback = @createMacrokb;
end



function createMacrokb(~)
    inportBlocks = Simulink.findBlocks(gcs, 'BlockType', 'Inport');
    outportBlocks = Simulink.findBlocks(gcs, 'BlockType', 'Outport');

    inportNames = getfullname(inportBlocks);
    ouportNames = getfullname(outportBlocks);
    
    for i = 1 : length(inportNames)
        set_param(inportNames{i}, 'BackgroundColor', 'Yellow');
    end

    for i = 1 : length(ouportNames)
        set_param(outportBlocks{i}, 'BackgroundColor', 'Magenta');
    end
    
end