function sl_customization(cm)
% Add Items to Model editor menus
% Link: https://www.mathworks.com/help/simulink/ug/adding-items-to-model-editor-menus.html
% Run sl_refresh_customizations in MATLAB cmd line after editing this file

    % Register custom menu function
    cm.addCustomMenuFcn('Simulink:ToolsMenu', @getMyMenuItems);
end

% Define custom menu function
function schemaFcns = getMyMenuItems(~)
    schemaFcns = {@createMacro};
end  

% Define schema function for keyboard shortcut to color blocks
function schema = createMacro(~)
    schema = sl_action_schema;
    schema.label = 'Color Blocks';
    schema.statustip = 'Macros';
    schema.accelerator = 'Alt+Shift+F';
    schema.callback = @createMacrokb;
end



function createMacrokb(~)
    % Searching for inport, outport, and constant blocks in current model subsystem 
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