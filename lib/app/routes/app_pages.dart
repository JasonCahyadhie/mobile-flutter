import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

import '../modules/widgets/bindings/widgets_binding.dart';
import '../modules/widgets/views/widgets_view.dart';

import '../modules/material_design/bindings/material_design_binding.dart';
import '../modules/material_design/views/material_design_view.dart';
import '../modules/material_design/views/pages/md_appbar_page.dart';
import '../modules/material_design/views/pages/md_materialapp_page.dart';
import '../modules/material_design/views/pages/md_scaffold_page.dart';
import '../modules/material_design/views/pages/md_container_page.dart';
import '../modules/material_design/views/pages/md_center_page.dart';
import '../modules/material_design/views/pages/md_column_page.dart';
import '../modules/material_design/views/pages/md_row_page.dart';
import '../modules/material_design/views/pages/md_listview_page.dart';
import '../modules/material_design/views/pages/md_gridview_page.dart';
import '../modules/material_design/views/pages/md_stack_page.dart';
import '../modules/material_design/views/pages/md_aspectratio_page.dart';
import '../modules/material_design/views/pages/md_padding_page.dart';
import '../modules/material_design/views/pages/md_expanded_page.dart';
import '../modules/material_design/views/pages/md_sizedbox_page.dart';
import '../modules/material_design/views/pages/md_card_page.dart';
import '../modules/material_design/views/pages/md_inkwell_page.dart';
import '../modules/material_design/views/pages/md_image_page.dart';
import '../modules/material_design/views/pages/md_circleavatar_page.dart';
import '../modules/material_design/views/pages/md_icon_page.dart';
import '../modules/material_design/views/pages/md_bottomsheet_page.dart';
import '../modules/material_design/views/pages/md_alertdialog_page.dart';
import '../modules/material_design/views/pages/md_snackbar_page.dart';
import '../modules/material_design/views/pages/md_drawer_page.dart';
import '../modules/material_design/views/pages/md_bottomnavbar_page.dart';
import '../modules/material_design/views/pages/md_bottom_navigation_bar_page.dart';
import '../modules/material_design/views/pages/md_navigation_bar_page.dart';
import '../modules/material_design/views/pages/md_navigation_drawer_page.dart';
import '../modules/material_design/views/pages/md_navigation_rail_page.dart';
import '../modules/material_design/views/pages/md_floating_action_button_page.dart';
import '../modules/material_design/views/pages/md_chip_page.dart';
import '../modules/material_design/views/pages/md_raw_chip_page.dart';
import '../modules/material_design/views/pages/md_circular_progress_indicator_page.dart';
import '../modules/material_design/views/pages/md_linear_progress_indicator_page.dart';
import '../modules/material_design/views/pages/md_date_picker_page.dart';
import '../modules/material_design/views/pages/md_time_picker_page.dart';
import '../modules/material_design/views/pages/md_divider_page.dart';
import '../modules/material_design/views/pages/md_icon_button_page.dart';
import '../modules/material_design/views/pages/md_material_button_page.dart';
import '../modules/material_design/views/pages/md_list_tile_page.dart';
import '../modules/material_design/views/pages/md_tab_bar_page.dart';
import '../modules/material_design/views/pages/md_tab_bar_view_page.dart';


import '../modules/basic_widget/bindings/basic_widget_binding.dart';
import '../modules/basic_widget/views/basic_widget_view.dart';
import '../modules/basic_widget/views/pages/bw_text_page.dart';
import '../modules/basic_widget/views/pages/bw_button_page.dart';
import '../modules/basic_widget/views/pages/bw_image_page.dart';
import '../modules/basic_widget/views/pages/bw_icon_page.dart';
import '../modules/basic_widget/views/pages/bw_network_image_page.dart';
import '../modules/basic_widget/views/pages/bw_asset_image_page.dart';
import '../modules/basic_widget/views/pages/bw_container_page.dart';
import '../modules/basic_widget/views/pages/bw_sized_box_page.dart';
import '../modules/basic_widget/views/pages/bw_placeholder_page.dart';
import '../modules/basic_widget/views/pages/bw_rich_text_page.dart';
import '../modules/basic_widget/views/pages/bw_spacer_page.dart';
import '../modules/basic_widget/views/pages/bw_expanded_page.dart';
import '../modules/basic_widget/views/pages/bw_flexible_page.dart';
import '../modules/basic_widget/views/pages/bw_builder_page.dart';
import '../modules/basic_widget/views/pages/bw_progress_indicator_page.dart';


import '../modules/layout_structure/bindings/layout_structure_binding.dart';
import '../modules/layout_structure/views/layout_structure_view.dart';
import '../modules/layout_structure/views/pages/ls_container_page.dart';
import '../modules/layout_structure/views/pages/ls_row_column_page.dart';
import '../modules/layout_structure/views/pages/ls_stack_page.dart';
import '../modules/layout_structure/views/pages/ls_column_page.dart';
import '../modules/layout_structure/views/pages/ls_row_page.dart';
import '../modules/layout_structure/views/pages/ls_align_page.dart';
import '../modules/layout_structure/views/pages/ls_center_page.dart';
import '../modules/layout_structure/views/pages/ls_padding_page.dart';
import '../modules/layout_structure/views/pages/ls_safe_area_page.dart';


import '../modules/input_forms/bindings/input_forms_binding.dart';
import '../modules/input_forms/views/input_forms_view.dart';
import '../modules/input_forms/views/pages/if_textfield_page.dart';
import '../modules/input_forms/views/pages/if_checkbox_page.dart';
import '../modules/input_forms/views/pages/if_radio_page.dart';
import '../modules/input_forms/views/pages/if_switch_page.dart';
import '../modules/input_forms/views/pages/if_dropdown_page.dart';
import '../modules/input_forms/views/pages/if_text_form_field_page.dart';
import '../modules/input_forms/views/pages/if_slider_page.dart';


import '../modules/scrolling_list/bindings/scrolling_list_binding.dart';
import '../modules/scrolling_list/views/scrolling_list_view.dart';
import '../modules/scrolling_list/views/pages/sl_listview_page.dart';
import '../modules/scrolling_list/views/pages/sl_gridview_page.dart';
import '../modules/scrolling_list/views/pages/sl_pageview_page.dart';
import '../modules/scrolling_list/views/pages/sl_single_child_scroll_view_page.dart';


import '../modules/api_integration/bindings/api_integration_binding.dart';
import '../modules/api_integration/views/api_integration_view.dart';

import '../modules/local_storage/bindings/local_storage_binding.dart';
import '../modules/local_storage/views/local_storage_view.dart';

import '../modules/device_features/bindings/device_features_binding.dart';
import '../modules/device_features/views/device_features_view.dart';

import '../modules/study_case/bindings/study_case_binding.dart';
import '../modules/study_case/views/study_case_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WIDGETS,
      page: () => const WidgetsView(),
      binding: WidgetsBinding(),
    ),
    
    // Material Design Routes
    GetPage(
      name: _Paths.MATERIAL_DESIGN,
      page: () => const MaterialDesignView(),
      binding: MaterialDesignBinding(),
    ),
    GetPage(
      name: _Paths.MD_APPBAR,
      page: () => const MdAppbarPage(),
    ),
    GetPage(
      name: _Paths.MD_MATERIALAPP,
      page: () => const MdMaterialappPage(),
    ),
    GetPage(
      name: _Paths.MD_SCAFFOLD,
      page: () => const MdScaffoldPage(),
    ),
    GetPage(
      name: _Paths.MD_CONTAINER,
      page: () => const MdContainerPage(),
    ),
    GetPage(
      name: _Paths.MD_CENTER,
      page: () => const MdCenterPage(),
    ),
    GetPage(
      name: _Paths.MD_COLUMN,
      page: () => const MdColumnPage(),
    ),
    GetPage(
      name: _Paths.MD_ROW,
      page: () => const MdRowPage(),
    ),
    GetPage(
      name: _Paths.MD_LISTVIEW,
      page: () => const MdListviewPage(),
    ),
    GetPage(
      name: _Paths.MD_GRIDVIEW,
      page: () => const MdGridviewPage(),
    ),
    GetPage(
      name: _Paths.MD_STACK,
      page: () => const MdStackPage(),
    ),
    GetPage(
      name: _Paths.MD_ASPECTRATIO,
      page: () => const MdAspectratioPage(),
    ),
    GetPage(
      name: _Paths.MD_PADDING,
      page: () => const MdPaddingPage(),
    ),
    GetPage(
      name: _Paths.MD_EXPANDED,
      page: () => const MdExpandedPage(),
    ),
    GetPage(
      name: _Paths.MD_SIZEDBOX,
      page: () => const MdSizedboxPage(),
    ),
    GetPage(
      name: _Paths.MD_CARD,
      page: () => const MdCardPage(),
    ),
    GetPage(
      name: _Paths.MD_INKWELL,
      page: () => const MdInkwellPage(),
    ),
    GetPage(
      name: _Paths.MD_IMAGE,
      page: () => const MdImagePage(),
    ),
    GetPage(
      name: _Paths.MD_CIRCLEAVATAR,
      page: () => const MdCircleavatarPage(),
    ),
    GetPage(
      name: _Paths.MD_ICON,
      page: () => const MdIconPage(),
    ),
    GetPage(
      name: _Paths.MD_BOTTOMSHEET,
      page: () => const MdBottomsheetPage(),
    ),
    GetPage(
      name: _Paths.MD_ALERTDIALOG,
      page: () => const MdAlertdialogPage(),
    ),
    GetPage(
      name: _Paths.MD_SNACKBAR,
      page: () => const MdSnackbarPage(),
    ),
    GetPage(
      name: _Paths.MD_DRAWER,
      page: () => const MdDrawerPage(),
    ),
    GetPage(
      name: _Paths.MD_BOTTOMNAVBAR,
      page: () => const MdBottomnavbarPage(),
    ),
    GetPage(
      name: _Paths.MD_BOTTOM_NAVIGATION_BAR,
      page: () => const MdBottomNavigationBarPage(),
    ),
    GetPage(
      name: _Paths.MD_NAVIGATION_BAR,
      page: () => const MdNavigationBarPage(),
    ),
    GetPage(
      name: _Paths.MD_NAVIGATION_DRAWER,
      page: () => const MdNavigationDrawerPage(),
    ),
    GetPage(
      name: _Paths.MD_NAVIGATION_RAIL,
      page: () => const MdNavigationRailPage(),
    ),
    GetPage(
      name: _Paths.MD_FLOATING_ACTION_BUTTON,
      page: () => const MdFloatingActionButtonPage(),
    ),
    GetPage(
      name: _Paths.MD_CHIP,
      page: () => const MdChipPage(),
    ),
    GetPage(
      name: _Paths.MD_RAW_CHIP,
      page: () => const MdRawChipPage(),
    ),
    GetPage(
      name: _Paths.MD_CIRCULAR_PROGRESS_INDICATOR,
      page: () => const MdCircularProgressIndicatorPage(),
    ),
    GetPage(
      name: _Paths.MD_LINEAR_PROGRESS_INDICATOR,
      page: () => const MdLinearProgressIndicatorPage(),
    ),
    GetPage(
      name: _Paths.MD_DATE_PICKER,
      page: () => const MdDatePickerPage(),
    ),
    GetPage(
      name: _Paths.MD_TIME_PICKER,
      page: () => const MdTimePickerPage(),
    ),
    GetPage(
      name: _Paths.MD_DIVIDER,
      page: () => const MdDividerPage(),
    ),
    GetPage(
      name: _Paths.MD_ICON_BUTTON,
      page: () => const MdIconButtonPage(),
    ),
    GetPage(
      name: _Paths.MD_MATERIAL_BUTTON,
      page: () => const MdMaterialButtonPage(),
    ),
    GetPage(
      name: _Paths.MD_LIST_TILE,
      page: () => const MdListTilePage(),
    ),
    GetPage(
      name: _Paths.MD_TAB_BAR,
      page: () => const MdTabBarPage(),
    ),
    GetPage(
      name: _Paths.MD_TAB_BAR_VIEW,
      page: () => const MdTabBarViewPage(),
    ),
    
    // Basic Widget Routes
    GetPage(
      name: _Paths.BASIC_WIDGET,
      page: () => const BasicWidgetView(),
      binding: BasicWidgetBinding(),
    ),
    GetPage(
      name: _Paths.BW_TEXT,
      page: () => const BwTextPage(),
    ),
    GetPage(
      name: _Paths.BW_BUTTON,
      page: () => const BwButtonPage(),
    ),
    GetPage(
      name: _Paths.BW_IMAGE,
      page: () => const BwImagePage(),
    ),
    GetPage(
      name: _Paths.BW_ICON,
      page: () => const BwIconPage(),
    ),
    GetPage(
      name: _Paths.BW_NETWORK_IMAGE,
      page: () => const BwNetworkImagePage(),
    ),
    GetPage(
      name: _Paths.BW_ASSET_IMAGE,
      page: () => const BwAssetImagePage(),
    ),
    GetPage(
      name: _Paths.BW_CONTAINER,
      page: () => const BwContainerPage(),
    ),
    GetPage(
      name: _Paths.BW_SIZED_BOX,
      page: () => const BwSizedBoxPage(),
    ),
    GetPage(
      name: _Paths.BW_PLACEHOLDER,
      page: () => const BwPlaceholderPage(),
    ),
    GetPage(
      name: _Paths.BW_RICH_TEXT,
      page: () => const BwRichTextPage(),
    ),
    GetPage(
      name: _Paths.BW_SPACER,
      page: () => const BwSpacerPage(),
    ),
    GetPage(
      name: _Paths.BW_EXPANDED,
      page: () => const BwExpandedPage(),
    ),
    GetPage(
      name: _Paths.BW_FLEXIBLE,
      page: () => const BwFlexiblePage(),
    ),
    GetPage(
      name: _Paths.BW_BUILDER,
      page: () => const BwBuilderPage(),
    ),
    GetPage(
      name: _Paths.BW_PROGRESS_INDICATOR,
      page: () => const BwProgressIndicatorPage(),
    ),
    
    // Layout Structure Routes
    GetPage(
      name: _Paths.LAYOUT_STRUCTURE,
      page: () => const LayoutStructureView(),
      binding: LayoutStructureBinding(),
    ),
    GetPage(
      name: _Paths.LS_CONTAINER,
      page: () => const LsContainerPage(),
    ),
    GetPage(
      name: _Paths.LS_ROW_COLUMN,
      page: () => const LsRowColumnPage(),
    ),
    GetPage(
      name: _Paths.LS_STACK,
      page: () => const LsStackPage(),
    ),
    
    // Input Forms Routes
    GetPage(
      name: _Paths.INPUT_FORMS,
      page: () => const InputFormsView(),
      binding: InputFormsBinding(),
    ),
    GetPage(
      name: _Paths.IF_TEXTFIELD,
      page: () => const IfTextfieldPage(),
    ),
    GetPage(
      name: _Paths.IF_CHECKBOX,
      page: () => const IfCheckboxPage(),
    ),
    GetPage(
      name: _Paths.IF_RADIO,
      page: () => const IfRadioPage(),
    ),
    GetPage(
      name: _Paths.IF_SWITCH,
      page: () => const IfSwitchPage(),
    ),
    GetPage(
      name: _Paths.IF_DROPDOWN,
      page: () => const IfDropdownPage(),
    ),
    
    // Scrolling List Routes
    GetPage(
      name: _Paths.SCROLLING_LIST,
      page: () => const ScrollingListView(),
      binding: ScrollingListBinding(),
    ),
    GetPage(
      name: _Paths.SL_LISTVIEW,
      page: () => const SlListviewPage(),
    ),
    GetPage(
      name: _Paths.SL_GRIDVIEW,
      page: () => const SlGridviewPage(),
    ),
    GetPage(
      name: _Paths.SL_PAGEVIEW,
      page: () => const SlPageviewPage(),
    ),
    
    // Other Routes
    // TODO: Uncomment when modules are implemented
    // GetPage(
    //   name: _Paths.API_INTEGRATION,
    //   page: () => const ApiIntegrationView(),
    //   binding: ApiIntegrationBinding(),
    // ),
    // GetPage(
    //   name: _Paths.LOCAL_STORAGE,
    //   page: () => const LocalStorageView(),
    //   binding: LocalStorageBinding(),
    // ),
    // GetPage(
    //   name: _Paths.DEVICE_FEATURES,
    //   page: () => const DeviceFeaturesView(),
    //   binding: DeviceFeaturesBinding(),
    // ),
    // GetPage(
    //   name: _Paths.STUDY_CASE,
    //   page: () => const StudyCaseView(),
    //   binding: StudyCaseBinding(),
    // ),
  ];
}
