import 'dart:ui';

import 'app_colors.dart';
import 'hex_color.dart';

class DarkColors extends AppColors {
  @override
  Color get primary => HexColor('#1F1F1F'); // fondo principal gris oscuro suave

  @override
  Color get textTitle => HexColor('#F2F2F2'); // casi blanco para títulos

  @override
  Color get textRegular => HexColor('#C0C0C0');

  @override
  Color get textLabel => HexColor('#A8A8A8');

  @override
  Color get body => HexColor('#E0E0E0');

  @override
  Color get textContent => HexColor('#BDBDBD');

  @override
  Color get inputText => HexColor('#D0D0D0');

  @override
  Color get iconSuccessStrong => HexColor('#BDBDBD');

  @override
  Color get brandBlue => HexColor('#5C85FF');

  @override
  Color get iconBlue => HexColor('#6A9BFF');

  @override
  Color get blueSurface => HexColor('#3D5AFE');

  @override
  Color get white => HexColor('#2A2A2A'); // fondo alterno gris oscuro

  @override
  Color get brandGrey => HexColor('#999999');

  @override
  Color get line => HexColor('#444444'); // líneas divisoras oscuras

  @override
  Color get disabled => HexColor('#555555');

  @override
  Color get dot => HexColor('#666666');

  @override
  Color get focus => HexColor('#3B2F36'); // fondo de foco tenue

  @override
  Color get brandPurple => HexColor('#AB47BC');

  @override
  Color get iconPurple => HexColor('#CE93D8');

  @override
  Color get borderPurple => HexColor('#BA68C8');

  @override
  Color get inputBackground => HexColor('#2F2F2F'); // gris más claro para inputs

  @override
  Color get errText => HexColor('#FF8A80');

  @override
  Color get errBackground => HexColor('#4E2E2E');

  @override
  Color get borderGreen => HexColor('#2E7D32');

  @override
  Color get greenBackground => HexColor('#3E4F41');

  @override
  Color get successIcon => HexColor('#66BB6A');

  @override
  Color get greenIcon => HexColor('#81C784');

  @override
  Color get warning => HexColor('#FFA000');
}
