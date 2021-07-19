import 'package:flutter/material.dart';
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Image.network("https://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=hello&step_word=&hs=0&pn=0&spn=0&di=30360&pi=0&rn=1&tn=baiduimagedetail&is=0%2C0&istype=2&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=-1&cs=3447171541%2C1209412865&os=1132299631%2C1767386815&simid=0%2C0&adpicid=0&lpn=0&ln=1671&fr=&fmq=1626578490414_R&fm=index&ic=0&s=undefined&hd=undefined&latest=undefined&copyright=undefined&se=&sme=&tab=0&width=&height=&face=undefined&ist=&jit=&cg=&bdtype=0&oriquery=&objurl=https%3A%2F%2Fgimg2.baidu.com%2Fimage_search%2Fsrc%3Dhttp%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F10302715594%2F1000.jpg%26refer%3Dhttp%3A%2F%2Finews.gtimg.com%26app%3D2002%26size%3Df9999%2C10000%26q%3Da80%26n%3D0%26g%3D0n%26fmt%3Djpeg%3Fsec%3D1629170492%26t%3D25ba7a9f4b7e4806a2f5131929f59d8a&fromurl=ippr_z2C%24qAzdH3FAzdH3Fgjo_z%26e3Bqq_z%26e3Bv54AzdH3F6wtgAzdH3FwAzdH3Fda8l8a8nAaAISF&gsm=1&rpstart=0&rpnum=0&islist=&querylist=&nojc=undefined",
      fit: BoxFit.fitWidth,),
    );
  }

}