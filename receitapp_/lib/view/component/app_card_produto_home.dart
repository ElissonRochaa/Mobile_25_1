import 'package:flutter/material.dart';

class AppCardProdutoHome extends StatefulWidget {
  final String nomeReceita;
  final String srcImage;
  final double avaliacao;
  const AppCardProdutoHome(
      {super.key,
      required this.nomeReceita,
      required this.srcImage,
      required this.avaliacao});

  @override
  State<AppCardProdutoHome> createState() => _AppCardProdutoHomeState();
}

class _AppCardProdutoHomeState extends State<AppCardProdutoHome> {
  bool curtido = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Container(
          width: 136,
          height: 136,
          decoration: BoxDecoration(
            color: Color(0xFFF7D4C1),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color:
                    Colors.grey.withOpacity(0.5), // Cor da sombra com opacidade
                spreadRadius: 4, // Expansão da sombra
                blurRadius: 4, // Desfoque da sombra
                offset: Offset(2, 4), // Deslocamento da sombra (x, y)
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(8, 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 120,
                height: 88,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.srcImage),
                    fit: BoxFit.cover,
                  ),
                  //color: Colors.black.withOpacity(0.3),
                  //backgroundBlendMode: BlendMode.darken,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 21,
                color: Color(0xFFB5855D),
                child: Center(
                  child: Text(
                    widget.nomeReceita,
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(8, 104),
          child: Container(
            width: 120,
            height: 24,
            child: Row(
              children: [
                Icon(
                  widget.avaliacao > 0.9
                      ? Icons.star
                      : widget.avaliacao > 0.2
                          ? Icons.star_half
                          : Icons.star_border,
                  color: theme.primaryColor,
                  size: 20,
                ),
                Icon(
                  widget.avaliacao > 1.9
                      ? Icons.star
                      : widget.avaliacao > 1.2
                          ? Icons.star_half
                          : Icons.star_border,
                  color: theme.primaryColor,
                  size: 20,
                ),
                Icon(
                  widget.avaliacao > 2.9
                      ? Icons.star
                      : widget.avaliacao > 2.2
                          ? Icons.star_half
                          : Icons.star_border,
                  color: theme.primaryColor,
                  size: 20,
                ),
                Icon(
                  widget.avaliacao > 3.9
                      ? Icons.star
                      : widget.avaliacao > 3.2
                          ? Icons.star_half
                          : Icons.star_border,
                  color: theme.primaryColor,
                  size: 20,
                ),
                Icon(
                  widget.avaliacao > 4.9
                      ? Icons.star
                      : widget.avaliacao > 4.2
                          ? Icons.star_half
                          : Icons.star_border,
                  color: theme.primaryColor,
                  size: 20,
                )
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(112, 117),
          child: GestureDetector(
            onTap: () => {
              setState(() {
                curtido = !curtido;
              })
            },
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: Color(0xFFB5855D),
                borderRadius: BorderRadius.all(
                  Radius.circular(90),
                ),
              ),
              child: Icon(
                Icons.bookmark,
                color: curtido ? Colors.red : Colors.white,
                size: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
