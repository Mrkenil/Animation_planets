import 'package:flutter/material.dart';
import '../../modals/Solar_system_modal.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PlanetInfo data = ModalRoute.of(context)!.settings.arguments as PlanetInfo;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 10,
              bottom: 500,
              child: Hero(
                tag: data.id,
                child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/images/${data.iconImage}")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 32),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    Text(
                      data.name,
                      style: TextStyle(
                        fontSize: 55,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "Solar System",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Divider(
                      color: Colors.black38,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Text(
                          data.description,
                          style: TextStyle(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 60,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      color: Colors.black38,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(
                        fontSize: 24,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 40,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: data.images.length,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                data.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: Text(
                "${data.id}",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 247,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            )
          ],
        ),
      ),
    );
  }
}
