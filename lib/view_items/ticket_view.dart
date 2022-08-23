import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/colors.dart';
import '../resources/dimens.dart';
import '../widgets/divider_widget.dart';
import 'date_item_view.dart';

class TicketView extends StatelessWidget {
  final Function? onTapTicket;

  const TicketView({
    Key? key,
    this.onTapTicket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTapTicket != null) {
          onTapTicket!();
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_3,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              CHECKOUT_GRADIENT_COLOR_ONE,
              CHECKOUT_GRADIENT_COLOR_TWO,
              CHECKOUT_GRADIENT_COLOR_ONE,
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(MARGIN_MEDIUM_2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 95,
                    height: 120,
                    child: Image.asset(
                      'assets/images/movie_item.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_3),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Black Widow (3D) (U/A)',
                            style: GoogleFonts.dmSans(
                                fontSize: TEXT_REGULAR_2X,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: MARGIN_CARD_MEDIUM_2,
                          ),
                          Text(
                            'JCGV : Junction City',
                            style: GoogleFonts.dmSans(
                              fontSize: TEXT_REGULAR_2X,
                              fontWeight: FontWeight.w400,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                          SizedBox(
                            height: MARGIN_MEDIUM_2,
                          ),
                          SizedBox(
                            height: MARGIN_CARD_MEDIUM,
                          ),
                          Row(
                            children: [
                              Text(
                                'Gold-G8,G7',
                                style: GoogleFonts.dmSans(
                                  fontSize: TEXT_REGULAR_2X,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '(SCREEN2)',
                                style: GoogleFonts.dmSans(
                                  fontSize: TEXT_REGULAR,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            DividerWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: MARGIN_CARD_MEDIUM,
                vertical: MARGIN_MEDIUM_2,
              ),
              child: DateSectionView(),
            ),
          ],
        ),
      ),
    );
  }
}
