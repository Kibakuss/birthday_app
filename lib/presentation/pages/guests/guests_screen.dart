import 'package:birthday_app/domain/models/guest/guest_model.dart';
import 'package:birthday_app/presentation/blocs/bloc/guest_list_bloc_bloc.dart';
import 'package:birthday_app/presentation/widgets/button_widget.dart';
import 'package:birthday_app/presentation/widgets/text_field_widget.dart';
import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

// class GuestListScreen extends StatelessWidget {
//   const GuestListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background,
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text(
//           'Список гостей',
//           style: Styles.appBarStyle,
//         ),
//       ),
//       body: CustomScrollView(
//         slivers: [
//           SliverPadding(
//             padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
//             sliver: const SliverToBoxAdapter(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [Text('2 гостя'), Text('по имени')],
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Padding(
//                   padding:
//                       EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
//                   child: Row(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.all(Radius.circular(41.r)),
//                         child: Image.asset(
//                           'assets/images/avatar.png',
//                           width: 64.r,
//                           height: 64.r,
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 12.w,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Иван Иванов',
//                             style: Styles.gameTitleStyle,
//                           ),
//                           Text(
//                             '19 лет',
//                             maxLines: 1,
//                             style: Styles.ageStyle,
//                           ),
//                           Text(
//                             'Студент',
//                             style: Styles.gameDescriptionStyle,
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                       IconButton(onPressed: () {}, icon: Icon(Icons.delete))
//                     ],
//                   ),
//                 );
//               },
//               childCount: 2, // 1000 list items
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: SizedBox(
//         height: 84.w,
//         width: 84.w,
//         child: FittedBox(
//           child: FloatingActionButton(
//             onPressed: () {
//               showModalBottomSheet<void>(
//                 // backgroundColor: Colors.white,
//                 useSafeArea: true,

//                 context: context,
//                 isScrollControlled: true,
//                 builder: (BuildContext context) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(15.r)),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           bottom: MediaQuery.of(context).viewInsets.bottom),
//                       child: Padding(
//                         padding:
//                             EdgeInsets.only(left: 16.w, right: 16.w, top: 16.w),
//                         child: SingleChildScrollView(
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               Container(
//                                 width: 35.w,
//                                 height: 4.h,
//                                 decoration: const BoxDecoration(
//                                     color: AppColors.bottomSheet),
//                               ),
//                               SizedBox(
//                                 height: 20.h,
//                               ),
//                               const TextFieldWidget(labelText: 'Имя'),
//                               SizedBox(height: 12.h),
//                               const TextFieldWidget(labelText: 'Фамилия'),
//                               SizedBox(height: 12.h),
//                               const TextFieldWidget(labelText: 'Дата рождения'),
//                               SizedBox(height: 12.h),
//                               const TextFieldWidget(
//                                   hintText: 'fasdfdasfds',
//                                   labelText: 'Телефон'),
//                               SizedBox(height: 12.h),
//                               const TextFieldWidget(labelText: 'Профессия'),
//                               SizedBox(
//                                   height: MediaQuery.of(context)
//                                               .viewInsets
//                                               .bottom ==
//                                           0
//                                       ? 50.h
//                                       : 10.h),
//                               ButtonWidget(
//                                 color: AppColors.green,
//                                 text: 'Записаться',
//                                 onTap: () {
//                                   Navigator.pop(context);
//                                 },
//                               ),
//                               SizedBox(
//                                   height: MediaQuery.of(context)
//                                               .viewInsets
//                                               .bottom !=
//                                           0
//                                       ? 10
//                                       : 150.h)
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             },
//             backgroundColor: AppColors.green,
//             shape: const CircleBorder(
//               side: BorderSide(
//                 color: AppColors.green,
//                 // width: 4,
//               ),
//               // borderRadius: BorderRadius.circular(42),
//             ),
//             child: const Icon(Icons.navigation),
//           ),
//         ),
//       ),
//     );
//   }
// }

class GuestListPage extends StatefulWidget {
  @override
  _GuestListPageState createState() => _GuestListPageState();
}

class _GuestListPageState extends State<GuestListPage> {
  late final GuestListBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = GetIt.instance<GuestListBloc>();
    _bloc.add(const GuestListEvent.loadGuests());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guest List'),
      ),
      body: BlocBuilder<GuestListBloc, GuestListState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state.status == GuestListStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.separated(
            itemCount: state.guests.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final guest = state.guests[index];

              return ListTile(
                title: Text(guest.name),
                subtitle: Text(guest.profession),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    // Показать диалог редактирования гостя
                  },
                ),
                onTap: () {
                  // Перейти на страницу профиля гостя
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Показать диалог добавления гостя
        },
      ),
    );
  }
}

class EditGuestScreen extends StatelessWidget {
  final bloc = GetIt.I.get<GuestListBloc>();

  final Guest guest;

  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _phoneController = TextEditingController();
  final _professionController = TextEditingController();

  EditGuestScreen({required this.guest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Guest'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController..text = guest.name,
            ),
            TextField(
              controller: _surnameController..text = guest.surname,
            ),
            TextField(
              controller: _ageController..text = guest.age.toString(),
            ),
            TextField(
              controller: _phoneController..text = guest.phone,
            ),
            TextField(
              controller: _professionController..text = guest.profession,
            ),
            ElevatedButton(
              onPressed: () {
                bloc.add(UpdateGuest(
                  guest.copyWith(
                    name: _nameController.text,
                    surname: _surnameController.text,
                    age: int.parse(_ageController.text),
                    phone: _phoneController.text,
                    profession: _professionController.text,
                  ),
                ));
                Navigator.pop(context);
              },
              child: Text('Save Guest'),
            ),
          ],
        ),
      ),
    );
  }
}

// class DatePickerExample extends StatefulWidget {
//   const DatePickerExample({super.key, this.restorationId});

//   final String? restorationId;

//   @override
//   State<DatePickerExample> createState() => _DatePickerExampleState();
// }

// /// RestorationProperty objects can be used because of RestorationMixin.
// class _DatePickerExampleState extends State<DatePickerExample>
//     with RestorationMixin {
//   // In this example, the restoration ID for the mixin is passed in through
//   // the [StatefulWidget]'s constructor.
//   @override
//   String? get restorationId => widget.restorationId;

//   final RestorableDateTime _selectedDate =
//       RestorableDateTime(DateTime(2021, 7, 25));
//   late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
//       RestorableRouteFuture<DateTime?>(
//     onComplete: _selectDate,
//     onPresent: (NavigatorState navigator, Object? arguments) {
//       return navigator.restorablePush(
//         _datePickerRoute,
//         arguments: _selectedDate.value.millisecondsSinceEpoch,
//       );
//     },
//   );

//   @pragma('vm:entry-point')
//   static Route<DateTime> _datePickerRoute(
//     BuildContext context,
//     Object? arguments,
//   ) {
//     return DialogRoute<DateTime>(
//       context: context,
//       builder: (BuildContext context) {
//         return DatePickerDialog(
//           restorationId: 'date_picker_dialog',
//           initialEntryMode: DatePickerEntryMode.calendarOnly,
//           initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
//           firstDate: DateTime(2021),
//           lastDate: DateTime(2022),
//         );
//       },
//     );
//   }

//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     registerForRestoration(_selectedDate, 'selected_date');
//     registerForRestoration(
//         _restorableDatePickerRouteFuture, 'date_picker_route_future');
//   }

//   void _selectDate(DateTime? newSelectedDate) {
//     if (newSelectedDate != null) {
//       setState(() {
//         _selectedDate.value = newSelectedDate;
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text(
//               'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
//         ));
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: OutlinedButton(
//           onPressed: () {
//             _restorableDatePickerRouteFuture.present();
//           },
//           child: const Text('Open Date Picker'),
//         ),
//       ),
//     );
//   }
// }
