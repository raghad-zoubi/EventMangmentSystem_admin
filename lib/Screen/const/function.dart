import 'package:flutter/material.dart';

class ConstFnction {
  ColorRatej(var n)
  {
    n=n.toString();

    if (n == '5') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
      ],);
    }
    else if (n == '1') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
      ],);
    }
    else if (n == '2') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
      ],);
    }
    else if (n == '3') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
      ],);
    }
    else if (n == '4') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.yellow, size: 22,),
        Icon(Icons.star, color: Colors.blueGrey, size: 22,),
      ],);
    }
    else {
      return Row(children: const [
        Icon(Icons.star, color: Colors.grey, size: 22,),
        Icon(Icons.star, color: Colors.grey, size: 22,),
        Icon(Icons.star, color: Colors.grey, size: 22,),
        Icon(Icons.star, color: Colors.grey, size: 22,),
        Icon(Icons.star, color: Colors.grey, size: 22,),
      ],);
    }
  }
  ColorRateb(var n) {
    print(n);n=n.toString();
    if (n == '5') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellowAccent, size: 17,),
        Icon(Icons.star, color: Colors.yellowAccent, size: 17,),
        Icon(Icons.star, color: Colors.yellowAccent, size: 17,),
        Icon(Icons.star, color: Colors.yellowAccent, size: 17,),
        Icon(Icons.star, color: Colors.yellowAccent, size: 17,),
      ],);
    }
    else if (n == '1') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
      ],);
    }
    else if (n == '2') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
      ],);
    }
    else if (n == '3') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
      ],);
    }
    else if (n == '4') {
      return Row(children: const [
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.yellow, size: 17,),
        Icon(Icons.star, color: Colors.blueGrey, size: 17,),
      ],);
    }
    else {
      return Row(children: const [
        Icon(Icons.star, color: Colors.grey, size: 17,),
        Icon(Icons.star, color: Colors.grey, size: 17,),
        Icon(Icons.star, color: Colors.grey, size: 17,),
        Icon(Icons.star, color: Colors.grey, size: 17,),
        Icon(Icons.star, color: Colors.grey, size: 17,),
      ],);
    }
  }

  Widget const1(var v,) {
    // const SizedBox(height: 20)
    return Center(
      child: Container(
          margin: EdgeInsets.only(top:24),
          child:
          Text('${v}',
              style: const TextStyle(color: Colors.black87,
                  fontSize: 17,
                  ))),);
  }
  Widget const2(var v,) {
    // const SizedBox(height: 20)
    return Center(
      child: Container(
          margin: EdgeInsets.only(left: 42,top:22),
          child: Text('${v} ',
              style: const TextStyle(color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold))),);
  } Widget const3(var v,) {
    // const SizedBox(height: 20)
    return Center(
      child: Container(
          margin: EdgeInsets.only(top:24),
          child: Text('${v} ',
              style: const TextStyle(color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold))),);
  }
}