#include "clickablelabel.h"
#include<QMouseEvent>

ClickableLabel::ClickableLabel(QWidget * parent ) :
    QLabel(parent)
{
}

ClickableLabel::~ClickableLabel()
{
}

void ClickableLabel::mousePressEvent (QMouseEvent *event)
{
    if(event->button()==Qt::LeftButton){
        emit clicked();
    }
}
