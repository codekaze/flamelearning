import 'package:flamelearning_ui_kit/core.dart';
import 'package:flamelearning_ui_kit/module/book_detail/view/pdf_view.dart';
import 'package:flamelearning_ui_kit/module/book_detail/widgets/similar_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

class BookDetailView extends StatelessWidget {
  final controller = Get.put(BookDetailController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<BookDetailController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Book Detail"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: Get.height / 4,
                        width: Get.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://image.freepik.com/free-photo/black-computer-keyboard-there-is-white-card-with-text-example-text_380694-2202.jpg',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height / 4,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bloomsbury Publishing',
                            ),
                            Text(
                              'Example Book Title',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Button(
                    onPressed: () {
                      Get.to(() => PDFView());
                    },
                    label: 'Read',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'About book',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Publisher',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Bloomsbury Publishing',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Language',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'English',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Similar books',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SimilarSlider(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
