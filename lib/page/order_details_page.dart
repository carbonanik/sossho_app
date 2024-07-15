import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sossho_app/widgets/common_app_bar.dart';

import '../widgets/app_button.dart';
import '../widgets/my_timeline_tile.dart';

final statusColor = {
  "COMPLETED": const Color(0xFF22C55E),
  "CANCELLED": const Color(0xFFef4444),
};

enum BookingStatusEnum {
  PROCESSING,
  CONFIRMED,
  PAYING,
  PAID,
  ACTIVE,
  COMPLETED,
  REVIEWED,
  CANCELLED,
  REFUNDED,
}

final bookingStatusSubtitle = {
  BookingStatusEnum.PROCESSING: "The order is being processed",
  BookingStatusEnum.CONFIRMED: "The order has been confirmed",
  BookingStatusEnum.PAYING: "The order is being paid",
  BookingStatusEnum.PAID: "The payment is completed",
  BookingStatusEnum.ACTIVE: "The order is active",
  BookingStatusEnum.COMPLETED: "The order is completed",
  BookingStatusEnum.REVIEWED: "The order is reviewed",
  BookingStatusEnum.CANCELLED: "The order is cancelled",
  BookingStatusEnum.REFUNDED: "The order is refunded",
};

class OrderDetailsPage extends StatelessWidget {

  const OrderDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Order Status'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          // print(snapshot.data);
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 16),
              //   decoration: BoxDecoration(
              //     color: statusColor['COMPLETED'],
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   child: const Center(
              //     child: Text(
              //       'Order Completed On ',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 10),
              // const SizedBox(height: 10),
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 16),
              //   decoration: BoxDecoration(
              //     color: statusColor['CANCELLED'],
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   child: const Center(
              //     child: Text(
              //       'Order Cancelled On ',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 10),
              const SizedBox(height: 10),
              const Text(
                "Order ID",
                style: TextStyle(fontSize: 16),
              ),
              const Text("100"),
              const SizedBox(height: 4),
              const Text(
                "Order Created On: ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              // const SizedBox(height: 16),
              // Row(
              //   children: [
              //     Expanded(
              //       child: AppButton(
              //         onPressed: () {},
              //         child: const Text('Locate On Map'),
              //       ),
              //     ),
              //     const SizedBox(width: 16),
              //     Expanded(
              //       child: AppButton(
              //         onPressed: () {},
              //         child: Text('Message'),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 16),
              const Text("Order Status",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatus(),
                    const SizedBox(height: 16),
                    // AppButton(
                    //     title: "Review Order", onPressed: () {}),
                    // const SizedBox(height: 20),
                    Row(
                      // mainAxisAlignment:
                      // MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Text(
                            "Title",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Text("Type",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        )
                      ],
                    ),
                    // const SizedBox(height: 4),
                    // AppText(
                    //     text: data.value?.data?.advertisement?.address
                    //         ?.location?.addressText ??
                    //         ""),
                    // const SizedBox(height: 10),
                    // AppText(
                    //   text:
                    //   "${data.value?.data?.advertisement?.totalRoom
                    //       ?.toString() ?? '0'} "
                    //       "Rooms & "
                    //       " ${data.value?.data?.advertisement?.guests
                    //       ?.toString() ?? '0'} "
                    //       "Guests",
                    //   fontSize: 12,
                    //   fontWeight: FontWeight.bold,
                    //   color: greyColor500,
                    // ),
                    // // const SizedBox(height: 2),
                    // // AppText(text: snapshot.data?.value?.data?.advertisement?.totalRoom?.toString() ?? ''),
                    // const SizedBox(height: 12),
                    // Row(
                    //   children: [
                    //     Column(
                    //       crossAxisAlignment:
                    //       CrossAxisAlignment.start,
                    //       children: [
                    //         const AppText(
                    //           text: "Check in",
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.bold,
                    //           color: greyColor500,
                    //         ),
                    //         const SizedBox(height: 4),
                    //         AppText(
                    //           // text: "Wed, 01 Jan 2022",
                    //           text: DateFormat.yMMMEd().format(
                    //               DateTime.fromMillisecondsSinceEpoch(
                    //                   data.value?.data?.checkIn
                    //                       ?.toInt() ??
                    //                       0)),
                    //         ),
                    //       ],
                    //     ),
                    //     const SizedBox(width: 20),
                    //     Column(
                    //       crossAxisAlignment:
                    //       CrossAxisAlignment.start,
                    //       children: [
                    //         const AppText(
                    //           text: "Check out",
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.bold,
                    //           color: greyColor500,
                    //         ),
                    //         const SizedBox(height: 4),
                    //         AppText(
                    //           text: DateFormat.yMMMEd().format(
                    //             DateTime.fromMillisecondsSinceEpoch(
                    //               data.value?.data?.checkOut
                    //                   ?.toInt() ??
                    //                   0,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // const Divider(
                    //   color: greyColor300,
                    // ),
                    // const AppText(
                    //   text: "Total Summery",
                    //   fontSize: 16,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    // const SizedBox(height: 10),
                    // Row(
                    //   children: [
                    //     const AppText(
                    //       text: "Sub Total",
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //       color: greyColor500,
                    //     ),
                    //     const Spacer(),
                    //     AppText(
                    //       text:
                    //       "$takaSymbol ${data.value?.data?.invoice?.totalPrice
                    //           ?.toString() ?? '0'}",
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // Row(
                    //   children: [
                    //     const AppText(
                    //       text: "Discount",
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //       color: greyColor500,
                    //     ),
                    //     const Spacer(),
                    //     AppText(
                    //       text:
                    //       "$takaSymbol ${data.value?.data?.invoice
                    //           ?.discountPrice?.toString() ?? '0'}",
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // Row(
                    //   children: [
                    //     const AppText(
                    //       text: "Total Amount",
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     const Spacer(),
                    //     AppText(
                    //       text:
                    //       "$takaSymbol ${data.value?.data?.invoice
                    //           ?.grandTotalPrice?.toString() ?? '0'}",
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // if (data.value?.data?.bookingStatus ==
                    //     BookingStatusEnum.ACTIVE.name)
                    //   AppButton(
                    //     title: "Cancel Order",
                    //     onPressed: () async {
                    //       // get note using dialog
                    //       final note = await showDialog<String>(
                    //         context: context,
                    //         builder: (context) {
                    //           String? note;
                    //           return AlertDialog(
                    //               title:
                    //               const Text("Cancellation Note"),
                    //               content: TextField(
                    //                   onChanged: (value) {
                    //                     note = value;
                    //                   },
                    //                   decoration:
                    //                   const InputDecoration(
                    //                     border: OutlineInputBorder(),
                    //                   )),
                    //               actions: [
                    //                 TextButton(
                    //                     child: const Text("Cancel"),
                    //                     onPressed: () {
                    //                       Navigator.of(context).pop();
                    //                     }),
                    //                 TextButton(
                    //                     child: const Text("Submit"),
                    //                     onPressed: () {
                    //                       Navigator.of(context)
                    //                           .pop(note);
                    //                     })
                    //               ]);
                    //         },
                    //       );
                    //
                    //       if (note == null || note.isEmpty) return;
                    //
                    //       final result = await ref
                    //           .read(userProfileApiProvider.future)
                    //           .mapRequest(
                    //             (api) =>
                    //             api.orderCancel(
                    //               orderId: bookingId,
                    //               moduleType: "THAKO",
                    //               cancelNote: note,
                    //             ),
                    //       );
                    //
                    //       if (result is Success) {
                    //         if (!context.mounted) return;
                    //         await showDialog(
                    //           context: context,
                    //           builder: (context) {
                    //             return const BasicSuccessDialog(
                    //               title: "Trip Canceled",
                    //             );
                    //           },
                    //         );
                    //         ref.invalidate(
                    //             getUserPersonalBookingsProvider);
                    //         ref.invalidate(userProfileProvider);
                    //
                    //         if (!context.mounted) return;
                    //         context.pop();
                    //       } else if (result is Failure) {
                    //         if (!context.mounted) return;
                    //         showDialog(
                    //           context: context,
                    //           builder: (context) {
                    //             return const BasicErrorDialog(
                    //               title: "Something went wrong",
                    //             );
                    //           },
                    //         );
                    //       }
                    //     },
                    //   ),
                    // const SizedBox(height: 24)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatus() {
    return Column(
      children: [
        ...List.generate(
          BookingStatusEnum.values.length,
          (index) {
            //
            final e = BookingStatusEnum.values[index];
            // final status = e.
            //     ?.where((element) => element.bookingStatus == e)
            //     .firstOrNull;
            //
            return _buildTimelineTile(index, e);
          },
        ),
      ],
    );
  }

  MyTimelineTile _buildTimelineTile(
    int index,
    BookingStatusEnum e,
  ) {
    return MyTimelineTile(
      isFirst: index == 0,
      isLast: index == BookingStatusEnum.values.length - 1,
      time: DateTime.now(),
      title: e.name[0] + e.name.substring(1).toLowerCase(),
      subtitle: bookingStatusSubtitle[e] ?? "",
      isCompleted: true,
      color: e == BookingStatusEnum.CANCELLED ? Colors.red : null,
      iconData: e == BookingStatusEnum.CANCELLED ? Icons.close : null,
    );
  }
}
