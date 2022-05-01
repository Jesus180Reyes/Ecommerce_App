import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slideshow_app/providers/custombutton_provider.dart';

class AddCandidateWidget extends StatelessWidget {
  const AddCandidateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addnumbre = Provider.of<CustomButtonProvider>(context, listen: true);
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ]),
            child: IconButton(
              onPressed: () => addnumbre.removeCandidate(),
              icon: const Icon(Icons.remove),
            ),
          ),
          Text(
            addnumbre.currentIndex.toString(),
            style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () => addnumbre.addCandidate(),
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
