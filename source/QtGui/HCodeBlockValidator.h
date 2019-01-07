/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HCODEBLOCKVALIDATOR_H
#define HCODEBLOCKVALIDATOR_H

#include <QValidator>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HCodeBlockValidator : public QValidator
{
    Q_OBJECT
public:
    explicit HCodeBlockValidator(QObject *parent = 0);
    HCodeBlockValidator(PHB_ITEM codeblock, QObject *parent = 0);
    ~HCodeBlockValidator();

    QValidator::State validate ( QString & input, int & pos ) const;
    void fixup( QString & input ) const;

    PHB_ITEM block;

};

#endif /* HCODEBLOCKVALIDATOR_H */
