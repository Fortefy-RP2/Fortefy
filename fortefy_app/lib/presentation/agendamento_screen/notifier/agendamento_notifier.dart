import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/agendamento_model.dart';
part 'agendamento_state.dart';

final agendamentoNotifier =
	StateNotifierProvider<AgendamentoNotifier, AgendamentoState>(
		(ref) => AgendamentoNotifier(AgendamentoState()),
);

class AgendamentoNotifier extends StateNotifier<AgendamentoState> {
	AgendamentoNotifier(AgendamentoState state) : super(state);
}
