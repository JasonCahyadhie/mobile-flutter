part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  
  static const HOME = _Paths.HOME;
  static const WIDGETS = _Paths.WIDGETS;
  
  // Material Design Routes
  static const MATERIAL_DESIGN = _Paths.MATERIAL_DESIGN;
  static const MD_APPBAR = _Paths.MD_APPBAR;
  static const MD_MATERIALAPP = _Paths.MD_MATERIALAPP;
  static const MD_SCAFFOLD = _Paths.MD_SCAFFOLD;
  static const MD_CONTAINER = _Paths.MD_CONTAINER;
  static const MD_CENTER = _Paths.MD_CENTER;
  static const MD_COLUMN = _Paths.MD_COLUMN;
  static const MD_ROW = _Paths.MD_ROW;
  static const MD_LISTVIEW = _Paths.MD_LISTVIEW;
  static const MD_GRIDVIEW = _Paths.MD_GRIDVIEW;
  static const MD_STACK = _Paths.MD_STACK;
  static const MD_ASPECTRATIO = _Paths.MD_ASPECTRATIO;
  static const MD_PADDING = _Paths.MD_PADDING;
  static const MD_EXPANDED = _Paths.MD_EXPANDED;
  static const MD_SIZEDBOX = _Paths.MD_SIZEDBOX;
  static const MD_CARD = _Paths.MD_CARD;
  static const MD_INKWELL = _Paths.MD_INKWELL;
  static const MD_IMAGE = _Paths.MD_IMAGE;
  static const MD_CIRCLEAVATAR = _Paths.MD_CIRCLEAVATAR;
  static const MD_ICON = _Paths.MD_ICON;
  static const MD_BOTTOMSHEET = _Paths.MD_BOTTOMSHEET;
  static const MD_ALERTDIALOG = _Paths.MD_ALERTDIALOG;
  static const MD_SNACKBAR = _Paths.MD_SNACKBAR;
  static const MD_DRAWER = _Paths.MD_DRAWER;
  static const MD_BOTTOMNAVBAR = _Paths.MD_BOTTOMNAVBAR;
  static const MD_BOTTOM_NAVIGATION_BAR = _Paths.MD_BOTTOM_NAVIGATION_BAR;
  static const MD_NAVIGATION_BAR = _Paths.MD_NAVIGATION_BAR;
  static const MD_NAVIGATION_DRAWER = _Paths.MD_NAVIGATION_DRAWER;
  static const MD_NAVIGATION_RAIL = _Paths.MD_NAVIGATION_RAIL;
  static const MD_FLOATING_ACTION_BUTTON = _Paths.MD_FLOATING_ACTION_BUTTON;
  static const MD_CHIP = _Paths.MD_CHIP;
  static const MD_RAW_CHIP = _Paths.MD_RAW_CHIP;
  static const MD_CIRCULAR_PROGRESS_INDICATOR = _Paths.MD_CIRCULAR_PROGRESS_INDICATOR;
  static const MD_LINEAR_PROGRESS_INDICATOR = _Paths.MD_LINEAR_PROGRESS_INDICATOR;
  static const MD_DATE_PICKER = _Paths.MD_DATE_PICKER;
  static const MD_TIME_PICKER = _Paths.MD_TIME_PICKER;
  static const MD_DIVIDER = _Paths.MD_DIVIDER;
  static const MD_ICON_BUTTON = _Paths.MD_ICON_BUTTON;
  static const MD_MATERIAL_BUTTON = _Paths.MD_MATERIAL_BUTTON;
  static const MD_LIST_TILE = _Paths.MD_LIST_TILE;
  static const MD_TAB_BAR = _Paths.MD_TAB_BAR;
  static const MD_TAB_BAR_VIEW = _Paths.MD_TAB_BAR_VIEW;
  
  // Basic Widget Routes
  static const BASIC_WIDGET = _Paths.BASIC_WIDGET;
  static const BW_TEXT = _Paths.BW_TEXT;
  static const BW_BUTTON = _Paths.BW_BUTTON;
  static const BW_IMAGE = _Paths.BW_IMAGE;
  static const BW_ICON = _Paths.BW_ICON;
  static const BW_NETWORK_IMAGE = _Paths.BW_NETWORK_IMAGE;
  static const BW_ASSET_IMAGE = _Paths.BW_ASSET_IMAGE;
  static const BW_CONTAINER = _Paths.BW_CONTAINER;
  static const BW_SIZED_BOX = _Paths.BW_SIZED_BOX;
  static const BW_PLACEHOLDER = _Paths.BW_PLACEHOLDER;
  static const BW_RICH_TEXT = _Paths.BW_RICH_TEXT;
  static const BW_SPACER = _Paths.BW_SPACER;
  static const BW_EXPANDED = _Paths.BW_EXPANDED;
  static const BW_FLEXIBLE = _Paths.BW_FLEXIBLE;
  static const BW_BUILDER = _Paths.BW_BUILDER;
  static const BW_PROGRESS_INDICATOR = _Paths.BW_PROGRESS_INDICATOR;
  
  // Layout Structure Routes
  static const LAYOUT_STRUCTURE = _Paths.LAYOUT_STRUCTURE;
  static const LS_CONTAINER = _Paths.LS_CONTAINER;
  static const LS_ROW_COLUMN = _Paths.LS_ROW_COLUMN;
  static const LS_STACK = _Paths.LS_STACK;
  
  // Input Forms Routes
  static const INPUT_FORMS = _Paths.INPUT_FORMS;
  static const IF_TEXTFIELD = _Paths.IF_TEXTFIELD;
  static const IF_CHECKBOX = _Paths.IF_CHECKBOX;
  static const IF_RADIO = _Paths.IF_RADIO;
  static const IF_SWITCH = _Paths.IF_SWITCH;
  static const IF_DROPDOWN = _Paths.IF_DROPDOWN;
  
  // Scrolling List Routes
  static const SCROLLING_LIST = _Paths.SCROLLING_LIST;
  static const SL_LISTVIEW = _Paths.SL_LISTVIEW;
  static const SL_GRIDVIEW = _Paths.SL_GRIDVIEW;
  static const SL_PAGEVIEW = _Paths.SL_PAGEVIEW;
  
  // API Integration
  static const API_INTEGRATION = _Paths.API_INTEGRATION;
  
  // Local Storage
  static const LOCAL_STORAGE = _Paths.LOCAL_STORAGE;
  
  // Device Features
  static const DEVICE_FEATURES = _Paths.DEVICE_FEATURES;
  
  // Study Case
  static const STUDY_CASE = _Paths.STUDY_CASE;
}

abstract class _Paths {
  _Paths._();
  
  static const HOME = '/home';
  static const WIDGETS = '/widgets';
  
  // Material Design Paths
  static const MATERIAL_DESIGN = '/material-design';
  static const MD_APPBAR = '/material-design/appbar';
  static const MD_MATERIALAPP = '/material-design/materialapp';
  static const MD_SCAFFOLD = '/material-design/scaffold';
  static const MD_CONTAINER = '/material-design/container';
  static const MD_CENTER = '/material-design/center';
  static const MD_COLUMN = '/material-design/column';
  static const MD_ROW = '/material-design/row';
  static const MD_LISTVIEW = '/material-design/listview';
  static const MD_GRIDVIEW = '/material-design/gridview';
  static const MD_STACK = '/material-design/stack';
  static const MD_ASPECTRATIO = '/material-design/aspectratio';
  static const MD_PADDING = '/material-design/padding';
  static const MD_EXPANDED = '/material-design/expanded';
  static const MD_SIZEDBOX = '/material-design/sizedbox';
  static const MD_CARD = '/material-design/card';
  static const MD_INKWELL = '/material-design/inkwell';
  static const MD_IMAGE = '/material-design/image';
  static const MD_CIRCLEAVATAR = '/material-design/circleavatar';
  static const MD_ICON = '/material-design/icon';
  static const MD_BOTTOMSHEET = '/material-design/bottomsheet';
  static const MD_ALERTDIALOG = '/material-design/alertdialog';
  static const MD_SNACKBAR = '/material-design/snackbar';
  static const MD_DRAWER = '/material-design/drawer';
  static const MD_BOTTOMNAVBAR = '/material-design/bottomnavbar';
  static const MD_BOTTOM_NAVIGATION_BAR = '/material-design/bottom-navigation-bar';
  static const MD_NAVIGATION_BAR = '/material-design/navigation-bar';
  static const MD_NAVIGATION_DRAWER = '/material-design/navigation-drawer';
  static const MD_NAVIGATION_RAIL = '/material-design/navigation-rail';
  static const MD_FLOATING_ACTION_BUTTON = '/material-design/floating-action-button';
  static const MD_CHIP = '/material-design/chip';
  static const MD_RAW_CHIP = '/material-design/raw-chip';
  static const MD_CIRCULAR_PROGRESS_INDICATOR = '/material-design/circular-progress-indicator';
  static const MD_LINEAR_PROGRESS_INDICATOR = '/material-design/linear-progress-indicator';
  static const MD_DATE_PICKER = '/material-design/date-picker';
  static const MD_TIME_PICKER = '/material-design/time-picker';
  static const MD_DIVIDER = '/material-design/divider';
  static const MD_ICON_BUTTON = '/material-design/icon-button';
  static const MD_MATERIAL_BUTTON = '/material-design/material-button';
  static const MD_LIST_TILE = '/material-design/list-tile';
  static const MD_TAB_BAR = '/material-design/tab-bar';
  static const MD_TAB_BAR_VIEW = '/material-design/tab-bar-view';
  
  // Basic Widget Paths
  static const BASIC_WIDGET = '/basic-widget';
  static const BW_TEXT = '/basic-widget/text';
  static const BW_BUTTON = '/basic-widget/button';
  static const BW_IMAGE = '/basic-widget/image';
  static const BW_ICON = '/basic-widget/icon';
  static const BW_NETWORK_IMAGE = '/basic-widget/network-image';
  static const BW_ASSET_IMAGE = '/basic-widget/asset-image';
  static const BW_CONTAINER = '/basic-widget/container';
  static const BW_SIZED_BOX = '/basic-widget/sized-box';
  static const BW_PLACEHOLDER = '/basic-widget/placeholder';
  static const BW_RICH_TEXT = '/basic-widget/rich-text';
  static const BW_SPACER = '/basic-widget/spacer';
  static const BW_EXPANDED = '/basic-widget/expanded';
  static const BW_FLEXIBLE = '/basic-widget/flexible';
  static const BW_BUILDER = '/basic-widget/builder';
  static const BW_PROGRESS_INDICATOR = '/basic-widget/progress-indicator';
  
  // Layout Structure Paths
  static const LAYOUT_STRUCTURE = '/layout-structure';
  static const LS_CONTAINER = '/layout-structure/container';
  static const LS_ROW_COLUMN = '/layout-structure/row-column';
  static const LS_STACK = '/layout-structure/stack';
  
  // Input Forms Paths
  static const INPUT_FORMS = '/input-forms';
  static const IF_TEXTFIELD = '/input-forms/textfield';
  static const IF_CHECKBOX = '/input-forms/checkbox';
  static const IF_RADIO = '/input-forms/radio';
  static const IF_SWITCH = '/input-forms/switch';
  static const IF_DROPDOWN = '/input-forms/dropdown';
  
  // Scrolling List Paths
  static const SCROLLING_LIST = '/scrolling-list';
  static const SL_LISTVIEW = '/scrolling-list/listview';
  static const SL_GRIDVIEW = '/scrolling-list/gridview';
  static const SL_PAGEVIEW = '/scrolling-list/pageview';
  
  // Other Paths
  static const API_INTEGRATION = '/api-integration';
  static const LOCAL_STORAGE = '/local-storage';
  static const DEVICE_FEATURES = '/device-features';
  static const STUDY_CASE = '/study-case';
}
