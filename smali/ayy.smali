.class public Layy;
.super Ljava/lang/Object;
.source "TranslateSpannable.java"


# direct methods
.method public static a(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 19
    const-string/jumbo v0, "\u6587\u5b57\u5bf9\u9f50\u53c2\u8003\u7ebf"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    const v0, 0x7f020417

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    return-void
.end method

.method public static b(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 24
    const-string/jumbo v0, "\u6b63\u5728\u68c0\u6d4b\u6587\u5b57..."

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    const v0, 0x7f020418

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    return-void
.end method

.method public static c(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 29
    const-string/jumbo v0, "\u6d82\u62b9\u8981\u7ffb\u8bd1\u7684\u9009\u6846"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v0, 0x7f020417

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 31
    return-void
.end method

.method public static d(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 34
    const-string/jumbo v0, "\u6b63\u5728\u7ffb\u8bd1..."

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f020417

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    return-void
.end method
