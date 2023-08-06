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

class GuestListScreen extends StatelessWidget {
  const GuestListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guest List',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocConsumer<GuestListBloc, GuestListState>(
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Guest ${state.guests.last.name} added!'),
              backgroundColor: Colors.green,
            ),
          );
        },
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.guests.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final guest = state.guests[index];

              return Dismissible(
                key: Key(guest.id.toString()),
                onDismissed: (direction) {
                  context
                      .read<GuestListBloc>()
                      .add(GuestListEvent.deleteGuest(guest));
                  // BlocProvider.of<GuestListBloc>(context).add(
                  //   GuestListEvent.deleteGuest(guest),
                },
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(
                    '${guest.name} ${guest.surname}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(guest.profession),
                  trailing: const Icon(Icons.edit),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return BlocProvider(
                          create: (context) => GuestListBloc(),
                          child: EditGuestDialog(
                            guest: guest,
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddGuestForm();
            },
          );
        },
        child: const Icon(Icons.person_add),
      ),
    );
  }
}

class AddGuestForm extends StatefulWidget {
  const AddGuestForm({super.key});

  @override
  _AddGuestFormState createState() => _AddGuestFormState();
}

class _AddGuestFormState extends State<AddGuestForm> {
  final bloc = GetIt.instance<GuestListBloc>();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _phoneController = TextEditingController();
  final _professionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _surnameController,
              decoration: const InputDecoration(labelText: 'Surname'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter surname';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: 'Age'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter age';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _professionController,
              decoration: const InputDecoration(labelText: 'Profession'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter profession';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // bloc.add(AddGuest(
                //       Guest(
                //         id: DateTime.now().millisecondsSinceEpoch,
                //         name: _nameController.text,
                //         surname: _surnameController.text,
                //         age: int.parse(_ageController.text),
                //         phone: _phoneController.text,
                //         profession: _professionController.text,
                //       ),
                //     ));
                if (_formKey.currentState!.validate()) {
                  bloc.add(
                    GuestListEvent.addGuest(
                      Guest(
                        id: DateTime.now().millisecondsSinceEpoch,
                        name: _nameController.text,
                        surname: _surnameController.text,
                        age: int.parse(_ageController.text),
                        phone: _phoneController.text,
                        profession: _professionController.text,
                      ),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text('Add Guest'),
            ),
          ],
        ),
      ),
    );
  }
}

class EditGuestDialog extends StatefulWidget {
  final Guest guest;

  const EditGuestDialog({super.key, required this.guest});

  @override
  _EditGuestDialogState createState() => _EditGuestDialogState();
}

class _EditGuestDialogState extends State<EditGuestDialog> {
  final bloc = GetIt.instance<GuestListBloc>();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _phoneController = TextEditingController();
  final _professionController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // заполнить поля
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Guest'),
      content: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _surnameController,
              decoration: const InputDecoration(labelText: 'Surname'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter surname';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: 'Age'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter age';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _professionController,
              decoration: const InputDecoration(labelText: 'Profession'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter profession';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              bloc.add(
                GuestListEvent.editGuest(
                  widget.guest.copyWith(
                    name: _nameController.text,
                    surname: _surnameController.text,
                    age: int.parse(_ageController.text),
                    phone: _phoneController.text,
                    profession: _professionController.text,
                  ),
                ),
              );
              Navigator.pop(context);
            }
          },
          child: const Text('Save'),
        ),
      ],
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
