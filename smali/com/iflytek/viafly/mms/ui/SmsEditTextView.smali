.class public Lcom/iflytek/viafly/mms/ui/SmsEditTextView;
.super Lcom/iflytek/base/skin/customView/XEditText;
.source "SmsEditTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 13
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XEditText;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setCompoundDrawablePadding(I)V

    .line 17
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setSingleLine(Z)V

    .line 18
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 20
    const-string/jumbo v0, "stateList.sms_contact_edit_extra"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 21
    const/4 v0, 0x7

    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setPadding(IIII)V

    .line 22
    const-string/jumbo v0, "style_sms_edit_send_btn_normal_extra"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 24
    return-void
.end method
