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
  
  // Basic Widget Routes
  static const BASIC_WIDGET = _Paths.BASIC_WIDGET;
  static const BW_TEXT = _Paths.BW_TEXT;
  static const BW_BUTTON = _Paths.BW_BUTTON;
  static const BW_IMAGE = _Paths.BW_IMAGE;
  static const BW_ICON = _Paths.BW_ICON;
  
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
  
  // Basic Widget Paths
  static const BASIC_WIDGET = '/basic-widget';
  static const BW_TEXT = '/basic-widget/text';
  static const BW_BUTTON = '/basic-widget/button';
  static const BW_IMAGE = '/basic-widget/image';
  static const BW_ICON = '/basic-widget/icon';
  
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
