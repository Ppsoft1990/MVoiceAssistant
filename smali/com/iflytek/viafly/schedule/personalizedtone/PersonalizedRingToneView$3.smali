.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;
.super Landroid/text/InputFilter$LengthFilter;
.source "PersonalizedRingToneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->setContentLengthLimit(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    .param p2, "x0"    # I

    .prologue
    .line 280
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 284
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 285
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;J)J

    .line 288
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "tip":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 292
    .end local v0    # "tip":Ljava/lang/String;
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
