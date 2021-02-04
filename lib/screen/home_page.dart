import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/onbording_controller.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  final _controller = onbordingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pagController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onbordingPages.length,
                itemBuilder: (context, index){
              return Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(_controller.onbordingPages[index].imageAsset),
                    SizedBox(height: 30),
                    Text(_controller.onbordingPages[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:30.0),
                      child: Text(_controller.onbordingPages[index].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),),
                    ),
                  ],
                ),
              );
            }),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(_controller.onbordingPages.length, (index) =>
                   Obx(() {
                        return Container(
                          margin: const EdgeInsets.all(4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: _controller.selectedPageIndex.value==index ? Colors.blue: Colors.grey,
                            shape: BoxShape.circle
                          ),
                        );
                      }
                    )),
              ),
            ),
            Positioned(
              right: 20,
                bottom: 20,
                child: FloatingActionButton(
                  onPressed: _controller.forwardAction,
                  elevation: 0,
                  child: Text("Next"),
                ))
          ],
        ),
      ),
    );
  }
}
