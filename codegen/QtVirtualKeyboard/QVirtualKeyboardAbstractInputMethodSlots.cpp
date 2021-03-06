%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

$includes

$beginSlotsClass
$slot=|selectionListChanged( QVirtualKeyboardSelectionListModel::Type type )
$slot=|selectionListActiveItemChanged( QVirtualKeyboardSelectionListModel::Type type, int index )
$slot=|selectionListsChanged()
$endSlotsClass
