import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: theme.primaryBackground,
        appBar: AppBar(
          backgroundColor: theme.primaryBackground,
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            'Início',
            style: GoogleFonts.inter(
              color: theme.primaryText,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
            children: [
              const _WelcomeCard(),
              const SizedBox(height: 28),
              _buildSectionTitle(theme, 'Atividades'),
              const SizedBox(height: 12),
              _ActionCard(
                icon: Icons.add_task_rounded,
                title: 'Cadastrar atividade',
                subtitle: 'Crie uma nova atividade',
                color: theme.primary,
                onTap: () => context.pushNamed(TesteCreateWidget.routeName),
              ),
              const SizedBox(height: 12),
              _ActionCard(
                icon: Icons.format_list_bulleted_rounded,
                title: 'Listar atividades',
                subtitle: 'Veja todas as atividades cadastradas',
                color: theme.secondary,
                onTap: () => context.pushNamed(TesteListWidget.routeName),
              ),
              const SizedBox(height: 28),
              _buildSectionTitle(theme, 'Conta e informações'),
              const SizedBox(height: 12),
              _ActionCard(
                icon: Icons.login_rounded,
                title: 'Login',
                subtitle: 'Acesse sua conta',
                color: theme.tertiary,
                onTap: () => context.pushNamed(Login1Widget.routeName),
              ),
              const SizedBox(height: 12),
              _ActionCard(
                icon: Icons.person_add_alt_1_rounded,
                title: 'Cadastrar conta',
                subtitle: 'Crie um novo usuário',
                color: theme.primary,
                onTap: () => context.pushNamed(CreateAccountWidget.routeName),
              ),
              const SizedBox(height: 12),
              _ActionCard(
                icon: Icons.info_outline_rounded,
                title: 'Sobre',
                subtitle: 'Informações sobre o aplicativo',
                color: theme.secondaryText,
                onTap: () => context.pushNamed(SobreWidget.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(FlutterFlowTheme theme, String text) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: theme.secondaryText,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    );
  }
}

class _WelcomeCard extends StatelessWidget {
  const _WelcomeCard();

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [theme.primary, theme.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: theme.primary.withOpacity(0.3),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Instituto_Federal_do_Paran%C3%A1_-_Marca_Vertical_2015.svg/500px-Instituto_Federal_do_Paran%C3%A1_-_Marca_Vertical_2015.svg.png',
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.school_rounded, color: theme.primary, size: 36),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bem-vindo!',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Gerencie suas atividades de forma simples.',
                  style: GoogleFonts.inter(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  const _ActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return Material(
      color: theme.secondaryBackground,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: theme.alternate),
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 26),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        color: theme.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: GoogleFonts.inter(
                        color: theme.secondaryText,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, color: theme.secondaryText),
            ],
          ),
        ),
      ),
    );
  }
}
