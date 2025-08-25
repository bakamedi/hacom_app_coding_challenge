import 'dart:ui';

import 'app_colors.dart';
import 'hex_color.dart';

class LightColors extends AppColors {
  @override
  Color get primary => HexColor('#AF2541');
  @override
  Color get textTitle => HexColor('#121417');
  @override
  Color get textRegular => HexColor('#5F6061');
  @override
  Color get textLabel => HexColor('#959595');
  @override
  Color get body => HexColor('#3B3B3B');
  @override
  Color get textContent => HexColor('#595959');
  @override
  Color get inputText => HexColor('#4A4A4A');
  @override
  Color get iconSuccessStrong => HexColor('#3B3B3B');

  @override
  Color get brandBlue => HexColor('#4D80FF');
  @override
  Color get iconBlue => HexColor('#3E86F9');
  @override
  Color get blueSurface => HexColor('#5C85FF');

  @override
  Color get white => HexColor('#FFFFFF');

  @override
  Color get brandGrey => HexColor('#8D8D8D');
  @override
  Color get line => HexColor('#C4C4C4');
  @override
  Color get disabled => HexColor('#D7D7D8');
  @override
  Color get dot => HexColor('#E0E0E0');

  @override
  Color get focus => HexColor('#FAEAF7');
  @override
  Color get brandPurple => HexColor('#D345BB');
  @override
  Color get iconPurple => HexColor('#E595D8');
  @override
  Color get borderPurple => HexColor('#E695D8');
  @override
  Color get inputBackground => HexColor('#F2EDF2');

  @override
  Color get errText => HexColor('#A30214');
  @override
  Color get errBackground => HexColor('#FFE1E3');

  @override
  Color get borderGreen => HexColor('#0D611B');
  @override
  Color get greenBackground => HexColor('#D3F1DD');
  @override
  Color get successIcon => HexColor('#2B6025');
  @override
  Color get greenIcon => HexColor('#50C999');

  @override
  Color get warning => HexColor('#A86500');
}
