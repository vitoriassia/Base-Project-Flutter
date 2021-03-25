import 'package:flutter/material.dart';

import '../constant.dart';

class BusyButton extends StatelessWidget {
  final String _text;
  final VoidCallback _onPressed;
  final bool _isBusy;
  final bool _isOutline;

  BusyButton({
    Key key,
    VoidCallback onPressed,
    String text = 'ENTRAR',
    bool isBusy = false,
    bool isOutline = true,
  })  : _onPressed = onPressed,
        _text = text,
        _isBusy = isBusy,
        _isOutline = isOutline,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: double.infinity,
            height: 40,
            child: _isOutline
                ? FlatButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: baseColorApp,
                            width: 4,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8.0)),
                    textColor: Colors.black,
                    color: Colors.white,
                    onPressed: _isBusy ? null : _onPressed,
                    child: Text(_isBusy ? '' : _text),
                  )
                : RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 8.0,
                    textColor: Colors.black,
                    onPressed: _isBusy ? null : _onPressed,
                    child: Text(_isBusy ? '' : _text),
                  ),
          ),
        ),
        _isBusy
            ? Center(
                child: coCircularProgressIndicator(),
              )
            : Container(),
      ],
    );
  }
}
