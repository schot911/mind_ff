import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth_page_model.dart';
export 'auth_page_model.dart';

class AuthPageWidget extends StatefulWidget {
  const AuthPageWidget({Key? key}) : super(key: key);

  @override
  _AuthPageWidgetState createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget> {
  late AuthPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthPageModel());

    _model.emailTextController ??= TextEditingController();
    _model.passwordTextController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: FlutterFlowLanguageSelector(
                width: 200,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                borderColor: FlutterFlowTheme.of(context).tertiaryColor,
                dropdownIconColor: Color(0x001D2428),
                borderRadius: 8,
                textStyle: TextStyle(
                  color: FlutterFlowTheme.of(context).backgroundComponents,
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
                hideFlags: false,
                flagSize: 24,
                flagTextGap: 8,
                currentLanguage: FFLocalizations.of(context).languageCode,
                languages: FFLocalizations.languages(),
                onChanged: (lang) => setAppLanguage(context, lang),
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'lfklrijh' /* Авторизация */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).title2,
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/Logo.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              TextFormField(
                controller: _model.emailTextController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: FFLocalizations.of(context).getText(
                    'skyn3eh7' /* Email */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).bodyText2,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
                keyboardType: TextInputType.emailAddress,
                validator:
                    _model.emailTextControllerValidator.asValidator(context),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: TextFormField(
                  controller: _model.passwordTextController,
                  autofocus: true,
                  obscureText: !_model.passwordVisibility,
                  decoration: InputDecoration(
                    hintText: FFLocalizations.of(context).getText(
                      'dwbcc2jm' /* Пароль */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => _model.passwordVisibility =
                            !_model.passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  validator: _model.passwordTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 36, 0, 24),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();

                    final user = await signInWithEmail(
                      context,
                      _model.emailTextController.text,
                      _model.passwordTextController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    context.goNamedAuth('myDate', mounted);
                  },
                  text: FFLocalizations.of(context).getText(
                    'xmna229v' /* Войти */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
