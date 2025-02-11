import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        scrolledUnderElevation: 0,
        title: Text(
          'Detail Product',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/0/0f/Idn_boarding_school_logo_%282020%29.png'),
              Text(
                "Apple Watch",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFCBF0C),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFCBF0C),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFCBF0C),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFCBF0C),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFCBF0C),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp45,000",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Available in stock",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "About",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 27.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD8D3D3)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text('35'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD8D3D3)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text('36'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD8D3D3)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text('37'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD8D3D3)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text('38'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD8D3D3)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text('39'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD8D3D3)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text('40'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  height: 51,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xffF16A26))),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
