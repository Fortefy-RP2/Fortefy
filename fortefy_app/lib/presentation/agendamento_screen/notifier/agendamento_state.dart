part of 'agendamento_notifier.dart';

class AgendamentoState extends Equatable {
	AgendamentoState({this.agendamentoModelObj});

	AgendamentoModel? agendamentoModelObj;

	@override
	List<Object?> get props => [agendamentoModelObj];
	AgendamentoState copyWith({AgendamentoModel? agendamentoModelObj}) {
		return AgendamentoState(
			agendamentoModelObj: agendamentoModelObj ?? this.agendamentoModelObj,
		);
	}
}
