import 'package:flutter/material.dart';


class ReceitaCardWidget extends StatefulWidget {
  bool favorita = false;
  String nomeReceita;
  double notaReceita;
  String imagemReceita;
  ReceitaCardWidget(this.nomeReceita, this.notaReceita, this.favorita, this.imagemReceita, {super.key});

  @override
  State<ReceitaCardWidget> createState() => _ReceitaCardWidgetState();
}

class _ReceitaCardWidgetState extends State<ReceitaCardWidget> {
  Widget _buildImageWithLabel(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  widget.imagemReceita),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 120,
          height: 88,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Theme.of(context).colorScheme.tertiary.withAlpha(150),
            ),
            width: 120,
            child: Text(
              widget.nomeReceita,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStars(BuildContext context) {
    return Container(
        child: Row(
      children: [
        for (int i = 1; i < 6; i++)
          Icon(
            i - 0.25 <= widget.notaReceita ?
            Icons.star_rounded : 
              i - 0.75 <= widget.notaReceita ?
              Icons.star_half_rounded :
              Icons.star_border_rounded,
            color: Theme.of(context).colorScheme.primary,
            size: 18,
          )
      ],
    ));
  }

  Widget _buildBookmark(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //print("Clicou pra salvar a receita");
        setState(() {
          widget.favorita = !widget.favorita;
        });
        print(widget.favorita);
      },
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.tertiary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(100),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          Icons.bookmark_rounded,
          color: widget.favorita ?
              Colors.red : Theme.of(context).colorScheme.onTertiary,
          size: 24,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Clicou na receita ${widget.nomeReceita}");
      },
      child: Stack(
        children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 136,
          width: 136,
        ),
        Positioned(
          top: 8,
          left: 8,
          child: _buildImageWithLabel(context),
        ),
        Positioned(
          left: 8,
          bottom: 12,
          child: _buildStars(context),
        ),
        Transform.translate(
          offset: Offset(110, 110),
          child: _buildBookmark(context),
        ),
      ]),
    );
  }
}
