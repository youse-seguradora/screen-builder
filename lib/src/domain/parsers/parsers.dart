import '../../presentation/parsers/parsers.dart';
import 'parser.dart';

class ParsersKeys {
  //  flutter widgets
  static const String sizedBox = "SizedBox";
  static const String iconButton = "IconButton";
  static const String form = "Form";
  static const String row = "Row";
  static const String expanded = "Expanded";
  static const String container = "Container";

  //  design system components
  static const String appBar = "AppBar";
  static const String title = "Title";
  static const String text = "Text";
  static const String bigNumber = "BigNumber";
  static const String textField = "TextField";
  static const String button = "Button";
  static const String cachedImage = "CachedImage";
  static const String youseCard = "YouseCard";
  static const String youseChip = "YouseChip";
  static const String youseChipList = "YouseChipList";
  static const String youseLoading = "YouseLoading";
  static const String youseFeedback = "YouseFeedback";
  static const String youseListCard = "YouseListCard";
  static const String youseMessage = "YouseMessage";
  static const String youseRadioButton = "YouseRadioButton";
  static const String youseCheckbox = "YouseCheckbox";
  static const String listItem = "ListItem";
  static const String productCard = "ProductCard";
  static const String featureCard = "FeatureCard";
  static const String hidden = "Hidden";
}

final Map<String, Parser> parsers = <String, Parser>{
  ParsersKeys.appBar: YouseAppBarParser(),
  ParsersKeys.title: TitleParser(),
  ParsersKeys.text: TextParser(),
  ParsersKeys.bigNumber: BigNumberParser(),
  ParsersKeys.textField: TextFormFieldParser(),
  ParsersKeys.iconButton: IconButtonParser(),
  ParsersKeys.sizedBox: SizedBoxParser(),
  ParsersKeys.form: FormParser(),
  ParsersKeys.row: RowParser(),
  ParsersKeys.expanded: ExpandedParser(),
  ParsersKeys.container: ContainerParser(),
  ParsersKeys.button: ButtonParser(),
  ParsersKeys.cachedImage: CachedImageParser(),
  ParsersKeys.youseCard: YouseCardParser(),
  ParsersKeys.youseChip: YouseChipParser(),
  ParsersKeys.youseChipList: YouseChipListParser(),
  ParsersKeys.youseLoading: YouseLoadingParser(),
  ParsersKeys.youseFeedback: YouseFeedbackParser(),
  ParsersKeys.youseListCard: YouseListCardParser(),
  ParsersKeys.listItem: ListItemParser(),
  ParsersKeys.youseMessage: YouseMessageParser(),
  ParsersKeys.youseRadioButton: YouseRadioButtonParser(),
  ParsersKeys.youseCheckbox: YouseCheckboxParser(),
  ParsersKeys.productCard: ProductCardParser(),
  ParsersKeys.featureCard: FeatureCardParser(),
  ParsersKeys.hidden: HiddenParser(),
};
