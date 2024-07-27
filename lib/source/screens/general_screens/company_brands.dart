import "package:flutter/material.dart";

import "../../constants/name-definations/image_strings.dart";
import "../../constants/name-definations/text_strings.dart";
import "ora_brand_RT.dart";

class OraCompanyBrands extends StatefulWidget {
  const OraCompanyBrands({super.key});

  @override
  State<OraCompanyBrands> createState() => _OraCompanyBrandsState();
}

class _OraCompanyBrandsState extends State<OraCompanyBrands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Column(
            
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            // header image
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(oraLogoImage))),
            ),
            // heading text title and subtitle
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  oraBrandPageHead,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  oraBrandPageSubHead,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraMediaBrandName, brandImage: oraMediaBrandImage,)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraMediaBrandImage,), height: 50.0,)),
                        Text(
                          oraMediaBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraWebHostBrandName, brandImage: oraWebHostBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraWebHostBrandImage,), height: 50.0,)),
                        Text(
                          oraWebHostBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraWebDesignBrandName, brandImage: oraWebDesignBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraWebDesignBrandImage,), height: 50.0,)),
                        Text(
                          oraWebDesignBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraMobileBrandName, brandImage: oraMobileBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraMobileBrandImage,), height: 50.0,)),
                        Text(
                          oraMobileBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraDMTBrandName, brandImage: oraDMTBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraDMTBrandImage,), height: 50.0,)),
                        Text(
                          oraDMTBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraDMABrandName, brandImage: oraDMABrandImage)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraDMABrandImage,), height: 50.0,)),
                        Text(
                          oraDMABrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraBigOrderBrandName, brandImage: oraBigOrderBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraBigOrderBrandImage,), height: 50.0,)),
                        Text(
                          oraBigOrderBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraPalcityBrandName, brandImage: oraPalcityBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraPalcityBrandImage,), height: 50.0,)),
                        Text(
                          oraPalcityBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraDFTNewsBrandName, brandImage: oraDFTNewsBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraDFTNewsBrandImage,), height: 50.0,)),
                        Text(
                          oraDFTNewsBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraMyLeaderBrandName, brandImage: oraMyLeaderBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraMyLeaderBrandImage,), height: 50.0,)),
                        Text(
                          oraMyLeaderBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraKEOnlineBrandName, brandImage: oraKEOnlineBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraKEOnlineBrandImage,), height: 50.0,)),
                        Text(
                          oraKEOnlineBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraODSChapChapBrandName, brandImage: oraODSChapChapBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraODSChapChapBrandImage,), height: 50.0,)),
                        Text(
                          oraODSChapChapBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                  const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraPalcitySaccoBrandName, brandImage: oraPalcitySaccoBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraPalcitySaccoBrandImage,), height: 50.0,)),
                        Text(
                          oraPalcitySaccoBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
                  const SizedBox(height: 10.0,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OraBrandPageReports(brandName: oraPalcityFoundBrandName, brandImage: oraPalcityFoundBrandImage)));
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Flexible(child: Image(image: AssetImage(oraPalcityFoundBrandImage,), height: 50.0,)),
                        Text(
                          oraPalcityFoundBrandTag,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    )),
                  ),
              ],
            )
        ]),
      ))
    );
  }
}