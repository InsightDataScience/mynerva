// activate with
// IPython.notebook.config.update({
//   "load_extensions": {"markcell":true}
// })
// put in ~/.ipython/nbextensions/

define(['base/js/namespace'], function(IPython){

    var _mcell = null;
    var mark_cell = {
        help: 'Tag a cell',
        icon : 'fa-tag',
        help_index : '',
        handler : function (env) {
          // todo mark cell instead of index.
          _mcell = env.notebook.get_selected_index()
        }
    }
    var jump_to_mark = {
        help: 'Tag a cell',
        icon : 'fa-eject',
        help_index : '',
        handler : function (env) {
          env.notebook.scroll_to_cell(_mcell);
        }
    }
    function _on_load(){
        var action_name1 = IPython.keyboard_manager.actions.register(mark_cell,    'mark-cell', 'scipy-2015')
        var action_name2 = IPython.keyboard_manager.actions.register(jump_to_mark, 'jump-to-mark', 'scipy-2015')
        IPython.keyboard_manager.command_shortcuts.add_shortcut('8,9', action_name1)
        IPython.keyboard_manager.command_shortcuts.add_shortcut('9,9', action_name2)
        IPython.toolbar.add_buttons_group([action_name1,action_name2])
    }
    return {load_ipython_extension: _on_load };
})