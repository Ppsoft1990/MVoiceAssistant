.class public Lcom/iflytek/viafly/mms/ui/SmsContactItemView;
.super Lcom/iflytek/base/skin/customView/XButton;
.source "SmsContactItemView.java"


# instance fields
.field private a:Lcom/iflytek/base/contacts/entities/ContactItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XButton;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, "null,null,image.contact_item_compound_normal_extra,null"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setCustomCompoundDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 27
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setCompoundDrawablePadding(I)V

    .line 28
    const-string/jumbo v0, "stateList.contact_item_bubble_bg_states_extra"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 29
    const-string/jumbo v0, "style_contact_item_bubble_normal_extra"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setSingleLine(Z)V

    .line 31
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 32
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getContactItem()Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->a:Lcom/iflytek/base/contacts/entities/ContactItem;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    :pswitch_0
    invoke-super {p0, p1}, Lcom/iflytek/base/skin/customView/XButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setContactItem(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 0
    .param p1, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->a:Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 53
    return-void
.end method
