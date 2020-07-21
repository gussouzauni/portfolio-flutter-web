import 'package:flutter/material.dart';
import 'package:myportfolio/src/utils/utils.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1,
      color: colorOne,
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 4, color: Colors.white)),
            width: 300,
            height: 300,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://gussouzauni.github.io/portfolio/img/minhaimagem.png'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gustavo Souza',
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Desenvolvedor Mobile',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Analista de Sistemas, formado pela UniRedentor, ' +
                      'desenvolvedor de aplicativos.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () => CustomUtil()
                          .htmlOpenLink('https://github.com/gussouzauni'),
                      child: Image.asset(
                        'assets/icons/github.png',
                        width: 60,
                        height: 60,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () => CustomUtil().htmlOpenLink(
                          'https://www.linkedin.com/in/gussouza/'),
                      child: Image.asset(
                        'assets/icons/linkedin.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    InkWell(
                      onTap: () => CustomUtil()
                          .htmlOpenLink('https://instagram.com/gussouzauni'),
                      child: Image.asset(
                        'assets/icons/instagram.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    InkWell(
                      onTap: () => CustomUtil().htmlOpenLink(
                          'https://drive.google.com/file/d/1_yZZ6nbYL0hx1VERKEhwDwlJwiR_ELAc/view?usp=sharing'),
                      child: Image.asset(
                        'assets/icons/whatsapp.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
