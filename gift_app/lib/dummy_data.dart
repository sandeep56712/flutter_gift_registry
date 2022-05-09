import 'package:flutter/material.dart';
import './models/category.dart';
import './models/product.dart';

final List<Category> dummyCategory = [
  Category(
    id: 'c1',
    title: 'Electronics',
    imageUrl:
        'https://rukminim2.flixcart.com/flap/128/128/image/52e3aff0b20ad632.png?q=100',
  ),
  Category(
    id: 'c2',
    title: 'Men',
    imageUrl:
        'https://cdn2.iconfinder.com/data/icons/colored-simple-circle-volume-01/128/circle-flat-general-53296fc58-512.png',
  ),
  Category(
    id: 'c3',
    title: 'Women',
    imageUrl:
        'https://cdn0.iconfinder.com/data/icons/clothes-and-fashion-icons/512/Clothes-16-512.png',
  ),
  Category(
    id: 'c4',
    title: 'Baby & Kids',
    imageUrl:
        'https://www.littleshop.in/wp-content/uploads/2021/05/Circle-tag_380-x-380-03.png',
  ),
  Category(
    id: 'c5',
    title: 'Grocery',
    imageUrl:
        'https://rukminim2.flixcart.com/flap/128/128/image/07a6a78f185d549a.png?q=100',
  ),
  Category(
    id: 'c6',
    title: 'Furniture',
    imageUrl:
        'https://rukminim2.flixcart.com/flap/128/128/image/2a284788d550ac21.png?q=100',
  ),
  Category(
    id: 'c7',
    title: 'Mobile',
    imageUrl:
        'https://rukminim2.flixcart.com/flap/128/128/image/19b17ff8cf6d89b6.png?q=100',
  ),
  Category(
    id: 'c8',
    title: 'Appliances',
    imageUrl:
        'https://rukminim2.flixcart.com/flap/128/128/image/042f2a5ff93aa6f2.png?q=100',
  ),
];

final List<Product> dummyProduct = [
  Product(
    id: 'p1',
    categories: ['c1'],
    title: 'Lenovo Laptop',
    imageUrl:
        'https://rukminim2.flixcart.com/image/416/416/keaaavk0/computer/x/m/y/lenovo-na-laptop-original-imafuzt8r5jqppfn.jpeg?q=70',
    price: 95000.00,
    description:
        'Lenovo(India) Pvt Ltd,Ferns Icon,Level 2,Doddenakundi Village,Marathalli,Outer ring road,K.R.Puram,Bangalore-560037',
  ),
  Product(
    id: 'p2',
    categories: ['c1'],
    title: 'LED Smart Android TV',
    imageUrl:
        'https://rukminim2.flixcart.com/image/416/416/kae95e80/television/f/6/y/realme-tv-32-original-imafrz79pweqeafh.jpeg?q=70',
    price: 15999.00,
    description:
        'Bring home this TV from realme and experience the stunning visuals that result from its Chroma Boost Picture Engine. Boasting a Bezel-less design and Dolby Surround Audio, this Android TV blends right into your decor and offers you audio performance that makes your favourite TV shows, movies, and other video content all the more enjoyable.',
  ),
  Product(
    id: 'p3',
    categories: ['c7'],
    title: 'One Plus',
    imageUrl:
        'https://rukminim2.flixcart.com/image/416/416/l2krs7k0/mobile/j/q/l/nord-ce-2-lite-5g-le2505-oneplus-original-imagdwf8gvgqyr7j.jpeg?q=70',
    price: 25000.00,
    description:
        'Quad camera, OIS 48 MP Sony IMX586 32 MP & ultra wide selfie cameras 90 Hz Fluid AMOLED display Snapdragon™ 765G 5G & up to 12 GB RAM',
  ),
  Product(
    id: 'p4',
    categories: ['c2'],
    title: 'Maroon T-Shirt',
    imageUrl:
        'https://rukminim2.flixcart.com/image/832/832/kfmv9u80/t-shirt/j/d/i/3xl-bnvmrhenful-z14-blive-original-imafwfqgbhczhj5w.jpeg?q=70',
    price: 1500.00,
    description: 'Product description here.....',
  ),
  Product(
    id: 'p5',
    categories: ['c3'],
    title: 'Kurta and Dupatta',
    imageUrl:
        'https://rukminim2.flixcart.com/image/832/832/kwcfngw0/ethnic-set/h/r/p/s-maroonhardup-nikora-original-imag9fe2ggzchgzy.jpeg?q=70',
    price: 5000.00,
    description: 'Product description here.....',
  ),
  Product(
    id: 'p6',
    categories: ['c4'],
    title: 'Rock Crawle',
    imageUrl:
        'https://rukminim2.flixcart.com/image/416/416/l0vbukw0/remote-control-toy/x/m/r/-original-imagcky7rss4gr8z.jpeg?q=70',
    price: 3500.00,
    description: 'Product description here.....',
  ),
  Product(
    id: 'p7',
    categories: ['c5'],
    title: 'Spicy Mixture Combo',
    imageUrl:
        'https://rukminim2.flixcart.com/image/416/416/kzn17680/fmcg-combo/p/r/4/kerala-banana-chips-made-in-coconut-oil-and-jackfruit-chips-and-original-imagbmftjhzejeev.jpeg?q=70',
    price: 500.00,
    description: 'Product description here.....',
  ),
  Product(
    id: 'p8',
    categories: ['c6'],
    title: 'Wood Queen Bed',
    imageUrl:
        'https://rukminim2.flixcart.com/image/416/416/l2f20sw0/bed/f/h/s/king-218-na-no-187-particle-board-no-84-mgrnd18kbivr-whi-doctor-original-imagdrnh4dv2cbcf.jpeg?q=70',
    price: 15000.00,
    description: 'Product description here.....',
  ),
  Product(
    id: 'p9',
    categories: ['c8'],
    title: 'Refrigerator Cover',
    imageUrl:
        'https://rukminim2.flixcart.com/image/416/416/ku8pbbk0/appliance-cover/9/y/u/40-99-fri-brown-tree-2-handle-m-11-comfort-house-99-original-imag7epukvmq4epq.jpeg?q=70',
    price: 400.00,
    description: 'Product description here.....',
  ),
  Product(
    id: 'p10',
    categories: ['c2'],
    title: 'Men Regular Fit',
    imageUrl:
        'https://rukminim2.flixcart.com/image/832/832/kxxl9jk0/shirt/b/7/y/xl-vx-db-navyblue-voroxy-original-imagaa4y5jv7xmgd.jpeg?q=70',
    price: 1300.00,
    description: 'Product description here.....',
  ),
  Product(
    id: 'p11',
    categories: ['c2'],
    title: 'Men Slim Block',
    imageUrl:
        'https://rukminim2.flixcart.com/image/832/832/kh2b4i80/kids-t-shirt/g/q/e/4-5-years-kbs-try-this-original-imafx5qx9aatphw7.jpeg?q=70',
    price: 2300.00,
    description: 'Product description here.....',
  ),
];
