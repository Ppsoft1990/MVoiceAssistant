.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$2;
.super Ljava/lang/Object;
.source "PersonalizedRingToneView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$2;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 255
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$2;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$2;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string/jumbo v0, "PersonalizedRingToneView"

    const-string/jumbo v1, "afterTextChanged found error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 251
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 246
    return-void
.end method
